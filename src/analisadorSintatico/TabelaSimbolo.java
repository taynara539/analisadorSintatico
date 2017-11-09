package analisadorSintatico;

import java.util.Hashtable;

public class TabelaSimbolo {
    private Hashtable<String, Token> tabelaSimbolos;

    public TabelaSimbolo(){
        tabelaSimbolos = new Hashtable<String, Token>();
        String palavra;
        palavra = "program";
        
    }

    public Hashtable<String, Token> getTabelaSimbolos() {
        return tabelaSimbolos;
    }

    public void putTS(String key, Token value){
        this.tabelaSimbolos.put(key, value);
    }

    public void imprimirTS(){
        System.out.println("Tabela de Símbolos");
        for(Token teste : tabelaSimbolos.values()){
           System.out.print(teste.sym);
           System.out.println(": " + teste.value);
           tabelaSimbolos.get(teste);
       }
    }
}