package genericos.komzin.libzinha;

import genericos.komzin.libzinha.comandos.CmdFechar;
import genericos.komzin.libzinha.comandos.ComandoFoguete;
import genericos.komzin.libzinha.comandos.ComandoG;
import genericos.komzin.libzinha.comandos.ComandoGm;
import genericos.komzin.libzinha.comandos.ComandoHat;
import genericos.komzin.libzinha.comandos.ComandoKomLib;
import genericos.komzin.libzinha.comandos.ComandoOps;
import genericos.komzin.libzinha.listeners.ChatListener;
import genericos.komzin.libzinha.listeners.GeralListener;
import genericos.komzin.libzinha.reboot.ComandoReinicio;
import genericos.komzin.libzinha.reboot.RebootUtils;
import genericos.komzin.libzinha.utils.ConfigProperties;

import java.text.ParseException;
import java.util.List;
import java.util.Properties;
import java.util.logging.Logger;

import nativelevel.KoM;
import net.milkbowl.vault.chat.Chat;
import net.milkbowl.vault.economy.Economy;
import net.milkbowl.vault.permission.Permission;
import net.sacredlabyrinth.phaed.simpleclans.SimpleClans;
import org.bukkit.Bukkit;
import org.bukkit.Server;
import org.bukkit.command.PluginCommand;
import org.bukkit.entity.Player;
import org.bukkit.metadata.FixedMetadataValue;
import org.bukkit.metadata.MetadataValue;
import org.bukkit.plugin.Plugin;
import org.bukkit.plugin.PluginManager;
import org.bukkit.plugin.RegisteredServiceProvider;
import org.bukkit.plugin.ServicesManager;
import org.bukkit.plugin.java.JavaPlugin;

public class InstaMCLibKom {
    public static InstaMCLibKom instancia = null;
    public static final Logger log = Logger.getLogger("Minecraft");
    public static Permission permission = null;
    public static Economy economy = null;
    public static Chat chat = null;
    public static SimpleClans sc = null;
    public static ConfigProperties conf;

    public static void addlog(String loga) {
        log.info("[LibKom] " + loga);
    }


    public void onEnable() {
        instancia = this;
        try {
            conf = new ConfigProperties(KoM._instance.getDataFolder() + "/chat.properties");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (!conf.getConfig().containsKey("ValorGlobal")) {
            conf.getConfig().setProperty("ValorGlobal", "50");
            conf.getConfig().setProperty("Moeda", "Coins");
            conf.saveConfig();
        }
        setupPermissions();
        setupEconomy();
        setupChat();
        Bukkit.getPluginCommand("gm").setExecutor(new ComandoGm());
        Bukkit.getPluginCommand("ops").setExecutor(new ComandoOps());
        Bukkit.getPluginCommand("fechar").setExecutor(new CmdFechar());
        Bukkit.getPluginCommand("komlib").setExecutor(new ComandoKomLib());
        Bukkit.getPluginCommand("foguete").setExecutor(new ComandoFoguete());
        Bukkit.getPluginCommand("hat").setExecutor(new ComandoHat());
        Bukkit.getPluginCommand("reinicio").setExecutor(new ComandoReinicio());
        Bukkit.getPluginCommand("g").setExecutor(new ComandoG());
        Bukkit.getServer().getPluginManager().registerEvents(new GeralListener(KoM._instance), KoM._instance);
        Bukkit.getServer().getPluginManager().registerEvents(new ChatListener(), KoM._instance);
        try {
            RebootUtils.LoadConf();
        } catch (ParseException ex) {
            log.info("ERRO AO CARREGAR CONF DE REINICIO RAPIDO");
        }
        Plugin plug = KoM._instance.getServer().getPluginManager().getPlugin("SimpleClans");
        if (plug != null) {
            sc = (SimpleClans) plug;
        }
    }

    private boolean setupEconomy() {
        RegisteredServiceProvider<Economy> economyProvider = KoM._instance.getServer().getServicesManager().getRegistration(Economy.class);
        if (economyProvider != null) {
            economy = (Economy) economyProvider.getProvider();
        }
        return economy != null;
    }

    private boolean setupPermissions() {
        RegisteredServiceProvider<Permission> permissionProvider = KoM._instance.getServer().getServicesManager().getRegistration(Permission.class);
        if (permissionProvider != null) {
            permission = (Permission) permissionProvider.getProvider();
        }
        return permission != null;
    }

    private boolean setupChat() {
        RegisteredServiceProvider<Chat> chatProvider = KoM._instance.getServer().getServicesManager().getRegistration(Chat.class);
        if (chatProvider != null) {
            chat = (Chat) chatProvider.getProvider();
        }
        return chat != null;
    }

    public static PlayerInfo getinfo(Player p) {
        if (p.hasMetadata("PlayerInfoKomLib")) {
            return (PlayerInfo) ((MetadataValue) p.getMetadata("PlayerInfoKomLib").get(0)).value();
        }


        PlayerInfo meta = new PlayerInfo();
        p.setMetadata("PlayerInfoKomLib", new FixedMetadataValue(KoM._instance, meta));
        return meta;
    }
}


/* Location:              C:\Users\User\Desktop\REPO\InstaMCLibKom.jar!\instamc\coders\libkom\InstaMCLibKom.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */
