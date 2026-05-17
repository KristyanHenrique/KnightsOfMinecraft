package nativelevel.sisteminhas;

import nativelevel.Custom.CustomItem;
import nativelevel.Custom.Items.BussolaMagica;
import nativelevel.KoM;
import nativelevel.utils.MetaUtils;
import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.Material;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.inventory.InventoryClickEvent;
import org.bukkit.inventory.Inventory;
import org.bukkit.inventory.ItemStack;
import org.bukkit.inventory.meta.ItemMeta;

/**
 *
 * @author Ziden
 *
 */
public class QuestsIntegracao extends KomSystem {

    public static final int XP_MOD = 50;

    public static void abreInventarioQuests(Player p) {
        abreMenu(p);
    }

    public static void abreMenu(Player p) {
        Inventory i = Bukkit.createInventory(p, 9, "Bussola do KoM");
        i.setItem(2, MetaUtils.setItemNameAndLore(new ItemStack(Material.BOOKSHELF), ChatColor.GOLD + "Quests Possíveis", new String[]{"", ChatColor.GREEN + "Veja quais quests você pode fazer"}));
        i.setItem(4, MetaUtils.setItemNameAndLore(new ItemStack(Material.BOOK_AND_QUILL), ChatColor.GOLD + "Minhas Quests", new String[]{"", ChatColor.GREEN + "Veja as quests que você está fazendo"}));
        i.setItem(6, MetaUtils.setItemNameAndLore(new ItemStack(Material.COMPASS), ChatColor.GOLD + "Locais no Mapa", new String[]{"", ChatColor.GREEN + "Mostra locais do seu nivel pelo mapa"}));
        p.openInventory(i);
    }

    @EventHandler
    public void invClick(InventoryClickEvent ev) {
        if (ev.getInventory() != null && ev.getInventory().getName().equalsIgnoreCase("Minhas Quests")) {
            Player p = (Player) ev.getWhoClicked();
            if (ev.getCurrentItem() != null && ev.getCurrentItem().getType() != Material.AIR) {
                ItemMeta meta = ev.getCurrentItem().getItemMeta();
                if (meta.getDisplayName() != null) {
                    String clicado = ChatColor.stripColor(meta.getDisplayName());
                    KoM.questService.notifyUnavailable(p);
                }
            }
        } else if (ev.getInventory() != null && ev.getInventory().getName().equalsIgnoreCase("Bussola do KoM")) {
            Player p = (Player) ev.getWhoClicked();
            if (ev.getCurrentItem() != null && ev.getCurrentItem().getType() != Material.AIR) {
                ItemMeta meta = ev.getCurrentItem().getItemMeta();
                if (meta.getDisplayName() != null) {
                    String clicado = ChatColor.stripColor(meta.getDisplayName());
                    if (clicado.equalsIgnoreCase("Quests Possíveis")) {
                        p.closeInventory();
                        listaQuests(p);
                    } else if (clicado.equalsIgnoreCase("Minhas Quests")) {
                        p.closeInventory();
                        mostraQuests(p);
                    } else if (clicado.equalsIgnoreCase("Locais no Mapa")) {
                        p.closeInventory();
                        CustomItem.getItem(BussolaMagica.class).onItemInteract(p);
                    }
                }
            }
        } else if (ev.getInventory() != null && ev.getInventory().getName().equalsIgnoreCase("Quests Possiveis")) {
            Player p = (Player) ev.getWhoClicked();
            ev.setCancelled(true);
            KoM.questService.notifyUnavailable(p);
        }
    }

    public static void mostraQuests(Player p) {
        KoM.questService.notifyUnavailable(p);
    }

    public static void listaQuests(Player p) {
        KoM.questService.notifyUnavailable(p);
    }
}
