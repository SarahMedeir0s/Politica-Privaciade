import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class Main {
    public static void main(String[] args) {
        String input = "<Policy><Name>Exemplo de política</Name><Target>lgbetinhos</Target>"
                        + "<Rule><Name>null</Name><Condition><Key>user_role</Key><Value>admin</Value></Condition>"
                        + "<Condition><Key>user_status</Key><Value>active</Value></Condition>"
                        + "<Condition><Key>user_role</Key><Value>ze beto</Value></Condition>"
                        + "<Condition><Key>user_status</Key><Value>active</Value></Condition></Rule>"
                        + "<Rule><Name>null</Name><Condition><Key>user_role</Key><Value>guest</Value></Condition>"
                        + "<Condition><Key>user_role</Key><Value>admin</Value></Condition><Action>read</Action></Rule></Policy>";

        PoliticaPrivacidadeLexer lexer = new PoliticaPrivacidadeLexer(CharStreams.fromString(input));
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        PoliticaPrivacidadeParser parser = new PoliticaPrivacidadeParser(tokens);

        ParseTree tree = parser.policy();
        System.out.println(tree.toStringTree(parser));
    }
}
