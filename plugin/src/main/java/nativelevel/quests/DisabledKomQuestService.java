package nativelevel.quests;

import java.util.Collections;
import java.util.List;
import org.bukkit.ChatColor;
import org.bukkit.entity.Player;

public class DisabledKomQuestService implements KomQuestService {

    public static final DisabledKomQuestService INSTANCE = new DisabledKomQuestService();

    private DisabledKomQuestService() {
    }

    @Override
    public boolean isEnabled() {
        return false;
    }

    @Override
    public int getTotalQuestCount() {
        return 0;
    }

    @Override
    public int getCompletedQuestCount(Player player) {
        return 0;
    }

    @Override
    public List<String> getNewQuestNamesForLevel(int level) {
        return Collections.emptyList();
    }

    @Override
    public void notifyUnavailable(Player player) {
        player.sendMessage(ChatColor.RED + "O sistema de quests antigo foi desativado.");
    }
}
