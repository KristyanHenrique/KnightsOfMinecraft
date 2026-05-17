package nativelevel.quests;

import java.util.List;
import org.bukkit.entity.Player;

public interface KomQuestService {

    boolean isEnabled();

    int getTotalQuestCount();

    int getCompletedQuestCount(Player player);

    List<String> getNewQuestNamesForLevel(int level);

    void notifyUnavailable(Player player);
}
