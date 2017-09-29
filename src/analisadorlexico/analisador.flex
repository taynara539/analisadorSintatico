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
       
"program"                       { imprimir("Palavra reservada program", yytext()); }
"declare"                       { imprimir("Palavra reservada declare", yytext()); }
"begin"                         { imprimir("Palavra reservada begin", yytext()); }
"end"                           { imprimir("Palavra reservada end", yytext()); }
"integer"                       { imprimir("Palavra reservada integer", yytext()); }
"if"                            { imprimir("Palavra reservada if", yytext()); }
"then"                          { imprimir("Palavra reservada then", yytext()); }
"else"                          { imprimir("Palavra reservada else", yytext()); }
"do"                            { imprimir("Palavra reservada do", yytext()); }
"while"                         { imprimir("Palavra reservada while", yytext()); }
"read"                          { imprimir("Palavra reservada read", yytext()); }
"write"                         { imprimir("Palavra reservada write", yytext()); }
"("                             { imprimir("Palavra reservada (", yytext()); }
")"                             { imprimir("Palavra reservada )", yytext()); }

{BRANCO}                        { imprimir("Espaco em branco", yytext()); }
{RELOP}                         { imprimir("Comparacao", yytext()); }
{ADDOP}                         { imprimir("Adicao ou Subtracao", yytext()); }
{MULOP}                         { imprimir("Multiplicacao ou Divisao", yytext()); }
{LITERAL}                       { imprimir("Literal", yytext()); }
{LETTER}                        { imprimir("Letra", yytext()); }
{DIGIT}                         { imprimir("Dígito", yytext()); }
{CARACTERE}                     { imprimir("Caractere", yytext()); }

. { throw new RuntimeException("Caractere inv?lido " + yytext()); }



