package nativelevel.anuncios;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import nativelevel.KoM;
import org.apache.commons.lang.StringUtils;
import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.Server;
import org.bukkit.command.CommandSender;
import org.bukkit.command.PluginCommand;
import org.bukkit.configuration.file.YamlConfiguration;
import org.bukkit.entity.Player;
import org.bukkit.plugin.PluginDescriptionFile;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.scheduler.BukkitScheduler;

public class Announcer {
    private static PluginDescriptionFile pdfFile;
    private static final String DIR = "plugins" + File.separator + "Kom" + File.separator;
    private static final String CONFIG_FILE = "anuncios.yml";
    private static YamlConfiguration Settings;
    private static String Tag;
    private static int Interval;
    public static Announcer instancia;
    private static int taskId = -1;
    private static int counter = 0;
    public boolean isScheduling;
    public boolean isRandom;
    public boolean InSeconds;
    public boolean permission;
    public boolean toGroups;
    private static List<String> strings;
    private static List<String> Groups;
    protected AnnouncerPerm perm;

    public Announcer() {
        this.isScheduling = false;
        this.InSeconds = false;
        this.perm = null;
    }

    public void onEnable() {
        instancia = this;
        pdfFile = KoM._instance.getDescription();
        File fDir = new File(DIR);
        if (!fDir.exists()) {
            fDir.mkdir();
        }
        try {
            File configFile = new File(DIR + "anuncios.yml");
            if (!configFile.exists()) {
                configFile.getParentFile().mkdirs();
                AnnouncerUtils.copy(KoM._instance.getResource("anuncios.yml"), configFile);
            }
        } catch (Exception e) {
            AnnouncerLog.severe("Failed to copy default config!", e);
        }
        loadSettings();
        this.perm = new AnnouncerPerm(this);
        if (this.permission) {
            this.perm.enablePermissions();
        } else {
            AnnouncerLog.warning("No permission system enabled!");
        }
        AnnouncerLog.info("Settings Loaded (" + strings.size() + " announces).");
        this.isScheduling = scheduleOn(null);
        AnnouncerLog.info("v" + pdfFile.getVersion() + " is enabled!");
    }

    public void onDisable() {
        scheduleOff(true, null);
        AnnouncerLog.info("v" + pdfFile.getVersion() + " is disabled!.");
    }

    public void scheduleOff(boolean Disabling, CommandSender sender) {
        if (this.isScheduling) {
            KoM._instance.getServer().getScheduler().cancelTask(taskId);
            if (sender != null) {
                sender.sendMessage(ChatColor.DARK_GREEN + "Scheduling finished!");
            }
            AnnouncerLog.info("Scheduling finished!");
            this.isScheduling = false;
        } else if (!Disabling) {
            if (sender != null) {
                sender.sendMessage(ChatColor.DARK_RED + "No schedule running!");
            }
            AnnouncerLog.info("No schedule running!");
        }
    }

    public boolean scheduleOn(CommandSender sender) {
        if (!this.isScheduling) {
            if (strings.size() > 0) {
                int TimeToTicks = this.InSeconds ? 20 : 1200;
                taskId = KoM._instance.getServer().getScheduler().scheduleAsyncRepeatingTask(KoM._instance, new printAnnounce(), Interval * TimeToTicks, Interval * TimeToTicks);
                if (taskId == -1) {
                    if (sender != null) {
                        sender.sendMessage(ChatColor.DARK_RED + "Scheduling failed!");
                    }
                    AnnouncerLog.warning("Scheduling failed!");
                    return false;
                }
                counter = 0;
                if (sender != null) {
                    sender.sendMessage(ChatColor.DARK_GREEN + "Scheduled every " + Interval + (this.InSeconds ? " seconds!" : " minutes!"));
                }
                AnnouncerLog.info("Scheduled every " + Interval + (this.InSeconds ? " seconds!" : " minutes!"));
                return true;
            }
            if (sender != null) {
                sender.sendMessage(ChatColor.DARK_RED + "Scheduling failed! There are no announcements to do.");
            }
            AnnouncerLog.warning("Scheduling failed! There are no announcements to do.");
            return false;
        }
        if (sender != null) {
            sender.sendMessage(ChatColor.DARK_RED + "Scheduler already running.");
        }
        AnnouncerLog.info("Scheduler already running.");
        return true;
    }

    public void scheduleRestart(CommandSender sender) {
        if (this.isScheduling) {
            scheduleOff(false, null);
            loadSettings();
            sender.sendMessage(ChatColor.DARK_GREEN + "Settings Loaded (" + strings.size() + " announces).");
            this.isScheduling = scheduleOn(sender);
        } else {
            sender.sendMessage(ChatColor.DARK_RED + "No schedule running!");
        }
    }

    public void setInterval(String[] args, CommandSender sender) {
        if (args.length == 2) {
            try {
                int interval = Integer.parseInt(args[1], 10);
                Settings.set("Settings.Interval", Integer.valueOf(interval));
                saveSettings();
                sender.sendMessage(ChatColor.DARK_GREEN + "Interval changed successfully to " + args[1] + (this.InSeconds ? " seconds." : " minutes."));
                if (this.isScheduling) /* 124 */ {
                    scheduleRestart(sender);
                }
            } catch (NumberFormatException err) {
                sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer interval 5");
            }
        } else /* 129 */ {
            sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer interval 5");
        }
    }

    public void setRandom(String[] args, CommandSender sender) {
        if (args.length == 2) {
            if (args[1].equals("on")) {
                Settings.set("Settings.Random", Boolean.valueOf(true));
                saveSettings();
                sender.sendMessage(ChatColor.DARK_GREEN + "Changed to random transition.");
                if (this.isScheduling) /* 140 */ {
                    scheduleRestart(sender);
                }
            } else if (args[1].equals("off")) {
                Settings.set("Settings.Random", Boolean.valueOf(false));
                saveSettings();
                sender.sendMessage(ChatColor.DARK_GREEN + "Changed to consecutive transition.");
                if (this.isScheduling) /* 146 */ {
                    scheduleRestart(sender);
                }
            } else {
                sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer random off");
            }
        } /* 151 */ else {
            sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer random off");
        }
    }

    public void addAnnounce(String[] args, CommandSender sender) {
        if (args.length > 1) {
            String com = StringUtils.join(args, " ", 1, args.length);
            strings.add(com);
            Settings.set("Announcer.Strings", strings);
            saveSettings();
            sender.sendMessage(ChatColor.DARK_GREEN + "New announce added!");
        } else {
            sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer add [announce here]");
        }
    }

    public void listAnnounces(CommandSender sender) {
        sender.sendMessage(ChatColor.DARK_GREEN + "List of announces with ids: (Total: " + strings.size() + ")");
        int i = 0;
        int j = 0;
        for (String announce : strings) {
            j++;
            for (String line : announce.split("&NEW_LINE;")) {
                i++;
                if (i == 1) /* 176 */ {
                    sender.sendMessage(ChatColor.GOLD + "[" + j + "] " + ChatColor.RESET + AnnouncerUtils.colorize(line));
                } else /* 178 */ {
                    sender.sendMessage(AnnouncerUtils.colorize(line));
                }
            }
            i = 0;
        }
    }

    public void removeAnnounce(String[] args, CommandSender sender) {
        if (args.length == 2) {
            try {
                int announceid = Integer.parseInt(args[1]);
                if ((announceid < 1) || (announceid > strings.size())) {
                    sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer remove [announce id]");
                } else {
                    strings.remove(announceid - 1);
                    Settings.set("Announcer.Strings", strings);
                    saveSettings();
                    sender.sendMessage(ChatColor.DARK_GREEN + "Announce deleted!");
                    if (this.isScheduling) /* 196 */ {
                        scheduleRestart(sender);
                    }
                }
            } catch (NumberFormatException e) {
                sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer remove [announce id]");
            }
        } else /* 202 */ {
            sender.sendMessage(ChatColor.DARK_RED + "Error! Usage: /announcer remove [announce id]");
        }
    }

    public void announcerHelp(CommandSender sender) {
        String or = ChatColor.WHITE + " | ";
        String auctionStatusColor = ChatColor.DARK_GREEN.toString();
        String helpMainColor = ChatColor.GOLD.toString();
        String helpCommandColor = ChatColor.AQUA.toString();
        String helpObligatoryColor = ChatColor.DARK_RED.toString();
        sender.sendMessage(helpMainColor + " -----[ " + auctionStatusColor + "Help for AutoAnnouncer" + helpMainColor + " ]----- ");
        sender.sendMessage(helpCommandColor + "/announcer help" + or + helpCommandColor + "?" + helpMainColor + " - Show this message.");
        sender.sendMessage(helpCommandColor + "/announcer on" + helpMainColor + " - Start AutoAnnouncer.");
        sender.sendMessage(helpCommandColor + "/announcer off" + helpMainColor + " - Stop AutoAnnouncer.");
        sender.sendMessage(helpCommandColor + "/announcer restart" + helpMainColor + " - Restart AutoAnnouncer.");
        sender.sendMessage(helpCommandColor + "/announcer interval" + or + helpCommandColor + "i" + helpObligatoryColor + " <minutes|seconds>" + helpMainColor + " - Set the interval time.");
        sender.sendMessage(helpCommandColor + "/announcer random" + or + helpCommandColor + "r" + helpObligatoryColor + " <on|off>" + helpMainColor + " - Set random or consecutive.");
    }

    private void loadSettings() {
        Settings = YamlConfiguration.loadConfiguration(new File(DIR + "anuncios.yml"));
        Interval = Settings.getInt("Settings.Interval", 5);
        this.InSeconds = Settings.getBoolean("Settings.InSeconds", false);
        this.isRandom = Settings.getBoolean("Settings.Random", false);
        this.permission = Settings.getBoolean("Settings.Permission", true);
        strings = Settings.getStringList("Announcer.Strings");
        Tag = AnnouncerUtils.colorize(Settings.getString("Announcer.Tag", "&GOLD;[AutoAnnouncer]"));
        this.toGroups = Settings.getBoolean("Announcer.ToGroups", true);
        Groups = Settings.getStringList("Announcer.Groups");
    }

    private void saveSettings() {
        try {
            Settings.save(new File(DIR + "anuncios.yml"));
        } catch (IOException e) {
            AnnouncerLog.warning("Failed to save config!");
        }
    }

    class printAnnounce implements Runnable {
        printAnnounce() {
        }

        public void run() {
            String announce = "";
            Random randomise = new Random();
            int selection = randomise.nextInt(Announcer.strings.size());
            announce = (String) Announcer.strings.get(selection);
            if ((Announcer.this.permission) && (Announcer.this.toGroups)) {
                for (Player p : Bukkit.getServer().getOnlinePlayers()) /* 259 */ {
                    for (String group : Announcer.Groups) /* 260 */ {
                        if (Announcer.this.perm.group(p, group)) {
                            for (String line : announce.split("&NEW_LINE;")) /* 262 */ {
                                p.sendMessage(Announcer.Tag + " " + AnnouncerUtils.colorize(line));
                            }
                            break;
                        }
                    }
                }
            } else {
                for (String line : announce.split("&NEW_LINE;")) /* 269 */ {
                    KoM._instance.getServer().broadcastMessage(Announcer.Tag + " " + AnnouncerUtils.colorize(line));
                }
            }
        }
    }
}
