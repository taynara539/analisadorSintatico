%%

%standalone
%class Teste

%{
private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}

BRANCO = [\n| |\t|\r|\b]
RELOP=[=|>|>=|<|<=|<>]
ADDOP=[+|-]
MULOP=[*|/]
LITERAL=\"{CARACTERE}*\"
LETTER=[A-Za-z]
DIGIT=[0-9]
CARACTERE=[^\"]

%%
       
"program"|"declare"|"begin"|"end"|"integer"|"if"|"then"|"else"|"do"|"while"|"read"|"write"|"("|")" { imprimir("Palavra reservada", yytext()); }
                  
{BRANCO}                        { imprimir("Espaco em branco", yytext()); }
{RELOP}                         { imprimir("Comparacao", yytext()); }
{ADDOP}                         { imprimir("Adicao ou Subtracao", yytext()); }
{MULOP}                         { imprimir("Multiplicacao ou Divisao", yytext()); }
{LITERAL}                       { imprimir("Literal", yytext()); }
{LETTER}                        { imprimir("Letra", yytext()); }
{DIGIT}                         { imprimir("Dígito", yytext()); }
{CARACTERE}                     { imprimir("Caractere", yytext()); }

. { throw new RuntimeException("Caractere inv?lido " + yytext()); }



