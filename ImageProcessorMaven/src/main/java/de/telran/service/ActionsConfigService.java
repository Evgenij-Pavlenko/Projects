package de.telran.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

public class ActionsConfigService {
    Properties prop = new Properties();

    public ActionsConfigService() {
        try {
            InputStream input = ConfigService.class.getClassLoader().getResourceAsStream("actions.properties");
            if (input == null) {
                System.out.println("Sorry, unable to find actions.property");
                return;
            }
            prop.load(input);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    public String getActionPackage() {
        return (String) prop.get("action.package");
    }

    public List<String> getActionClassNames() {
        //PreviewImageAction,GrayscaleImageAction,ThumbnailImageAction
        // -> ["PreviewImageAction", "GrayscaleImageAction", "ThumbnailImageAction"]
        return Arrays.asList(((String) prop.get("action.names")).split(","));

    }
}
