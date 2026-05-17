package nativelevel.anuncios;

import java.util.ArrayList;
import java.util.List;

public class CommandLineTokenizer {
    private static void appendToBuffer(List<String> resultBuffer, StringBuffer buf) {
        if (buf.length() > 0) {
            resultBuffer.add(buf.toString());
            buf.setLength(0);
        }
    }

    public static String[] tokenize(String[] args) {
        if ((args == null) || (args.length == 0)) {
            return tokenize("");
        }
        StringBuilder sb = new StringBuilder(args[0]);
        for (int i = 1; i < args.length; i++) {
            sb.append(" ").append(args[i]);
        }
        return tokenize(sb.toString());
    }

    public static String[] tokenize(String commandLine) {
        List resultBuffer = new ArrayList();

        if (commandLine != null) {
            int z = commandLine.length();
            boolean insideQuotes = false;
            StringBuffer buf = new StringBuffer();

            for (int i = 0; i < z; i++) {
                char c = commandLine.charAt(i);
                if (c == '"') {
                    appendToBuffer(resultBuffer, buf);
                    insideQuotes = !insideQuotes;
                } else if (c == '\\') {
                    if ((z > i + 1) && ((commandLine.charAt(i + 1) == '"') || (commandLine.charAt(i + 1) == '\\'))) {
                        buf.append(commandLine.charAt(i + 1));
                        i++;
                    } else {
                        buf.append("\\");
                    }
                } else if (insideQuotes) {
                    buf.append(c);
                } else if (Character.isWhitespace(c)) {
                    appendToBuffer(resultBuffer, buf);
                } else {
                    buf.append(c);
                }

            }

            appendToBuffer(resultBuffer, buf);
        }

        String[] result = new String[resultBuffer.size()];
        return (String[]) (String[]) resultBuffer.toArray(result);
    }
}
