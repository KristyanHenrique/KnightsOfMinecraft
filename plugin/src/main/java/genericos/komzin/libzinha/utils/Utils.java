package genericos.komzin.libzinha.utils;

import genericos.komzin.libzinha.InstaMCLibKom;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

import nativelevel.KoM;
import org.bukkit.Bukkit;
import org.bukkit.entity.Player;
import org.bukkit.plugin.messaging.Messenger;
import org.bukkit.plugin.messaging.PluginMessageRecipient;


public class Utils {
    public static void TeleportarTPBG(String server, Player sender) {
        Bukkit.getMessenger().registerOutgoingPluginChannel(KoM._instance, "BungeeCord");
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(b);
        try {
            out.writeUTF("Connect");
            out.writeUTF(server);
        } catch (IOException localIOException) {
        }
        sender.sendPluginMessage(KoM._instance, "BungeeCord", b.toByteArray());
    }
}
