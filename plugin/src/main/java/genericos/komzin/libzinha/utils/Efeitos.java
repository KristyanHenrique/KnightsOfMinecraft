package genericos.komzin.libzinha.utils;

import genericos.komzin.libzinha.InstaMCLibKom;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.UUID;

import nativelevel.KoM;
import org.bukkit.Effect;
import org.bukkit.Location;
import org.bukkit.Server;
import org.bukkit.World;
import org.bukkit.entity.Entity;
import org.bukkit.entity.EntityType;
import org.bukkit.scheduler.BukkitScheduler;


public class Efeitos {
    public static Set<UUID> bats = new HashSet();

    public static void effectBats(final Location location) {
        final Set<UUID> batty = new HashSet();
        for (int x = 0; x < 10; x++) {
            batty.add(location.getWorld().spawnEntity(location, EntityType.BAT).getUniqueId());
        }
        bats.addAll(batty);
        KoM._instance.getServer().getScheduler().runTaskLater(KoM._instance, new Runnable() {
            public void run() {
                Efeitos.effectBatsCleanup(location.getWorld(), batty);
                Efeitos.bats.removeAll(batty);
            }
        }, 60L);
    }


    public static Random r = new Random();

    private static void effectBatsCleanup(World world, Set<UUID> bats) {
        for (Entity entity : world.getEntities()) {
            if (bats.contains(entity.getUniqueId())) {
                world.playEffect(entity.getLocation(), Effect.SMOKE, r.nextInt(9));
                entity.remove();
            }
        }
    }

    public static void effectExplosion(Location loc) {
        loc.getWorld().createExplosion(loc.getX(), loc.getY(), loc.getZ(), 0.0F, false, false);
    }

    public static void effectFlames(Location location) {
        for (int i = 0; i < 10; i++) {
            location.getWorld().playEffect(location, Effect.MOBSPAWNER_FLAMES, r.nextInt(9));
        }
    }

    public static void effectLightning(Location location) {
        int x = location.getBlockX();
        double y = location.getBlockY();
        int z = location.getBlockZ();
        for (int i = 0; i < 20; i++) {
            double xToStrike;
            if (r.nextBoolean()) {
                xToStrike = x + r.nextInt(6);
            } else
                xToStrike = x - r.nextInt(6);
            double zToStrike;
            if (r.nextBoolean()) {
                zToStrike = z + r.nextInt(6);
            } else {
                zToStrike = z - r.nextInt(6);
            }
            Location toStrike = new Location(location.getWorld(), xToStrike, y, zToStrike);
            location.getWorld().strikeLightningEffect(toStrike);
        }
    }

    public static void effectSmoke(Location location) {
        for (int i = 0; i < 10; i++) {
            location.getWorld().playEffect(location, Effect.SMOKE, r.nextInt(9));
        }
    }
}