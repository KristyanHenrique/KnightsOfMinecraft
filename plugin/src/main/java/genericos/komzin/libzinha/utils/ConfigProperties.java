package genericos.komzin.libzinha.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConfigProperties {
    private File dbFile;
    Properties prop = new Properties();

    public ConfigProperties(String arquivo) throws IOException, FileNotFoundException {
        this.dbFile = new File(arquivo);
        if (!this.dbFile.exists()) {
            this.dbFile.getParentFile().mkdirs();
            this.prop.store(new FileOutputStream(arquivo), null);
        } else {
            this.prop.load(new FileInputStream(arquivo));
        }
    }

    public void saveConfig() {
        try {
            this.prop.store(new FileOutputStream(this.dbFile.getAbsolutePath()), null);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ConfigProperties.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ConfigProperties.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Properties getConfig() {
        return this.prop;
    }
}