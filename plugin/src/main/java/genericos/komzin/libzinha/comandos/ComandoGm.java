package genericos.komzin.libzinha.comandos;

import java.io.PrintStream;

import org.bukkit.GameMode;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;


public class ComandoGm implements CommandExecutor {
    public boolean onCommand(CommandSender cs, Command cmnd, String string, String[] strings) {
        if ((cs instanceof Player)) {
            Player p = (Player) cs;
            if ((p.isOp()) || (p.hasPermission("maniacomandos.gm"))) {
                if (p.getGameMode().equals(GameMode.CREATIVE)) {
                    p.setGameMode(GameMode.SURVIVAL);
                    p.sendMessage("§7Setado modo de jogo §2§lSOBREVIVENCIA");
                } else {
                    p.setGameMode(GameMode.CREATIVE);
                    p.sendMessage("§7Setado modo de jogo §4§lCRIATIVO");
                }
            } else {
                p.sendMessage("§cOh nao, voce nao pode usar esse comando. =/ ");
                return true;
            }
        } else {
            System.out.println("Comando apenas para player");
            return true;
        }

        return true;
    }
}


/* Location:              C:\Users\User\Desktop\REPO\InstaMCLibKom.jar!\instamc\coders\libkom\comandos\ComandoGm.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */