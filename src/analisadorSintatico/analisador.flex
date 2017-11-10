package analisadorSintatico;

%%

%line
%column
%type Token
%cup



%{
  TabelaSimbolo TS = new TabelaSimbolo();

  public final int yylenght() {
    return yytext().length();
  }

  public final int yyline() {
    return yyline;
  }

  public final int yycolumn() {
    return yycolumn;
  }

  public final int yychar() {
    return yychar;
  }

  public boolean isZzAtEOF() {
    return zzAtEOF;
  }

%}

NONNEWLINE_WHITE_SPACE_CHAR=[\ \t\b]
NEWLINE=\r|\n|\r\n
RELOP=[=|>|>=|<|<=|<>]
ADDOP=[+|-]
MULOP=[*|/]
LITERAL=\"{caractere}*\"
caractere=[^\"]
IDENTIFIER={LETTER}({LETTER}|{LETTER})*
LETTER="A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L"
| "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W"
| "X" | "Y" | "Z" | "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h"
| "i" | "j" | "k" | "l" | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t"
| "u" | "v" | "w" | "x" | "y" | "z"
DIGIT="0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"

%%
  

<YYINITIAL> {

        "body" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.BODY, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "while-stmt" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.ENQUANTOSTMT, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "stmt-suffix" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.ENQUANTOSUFFIX, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "read-stmt" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.LERSTMT, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "write-stmt" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.ESCREVERSTMT, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "writable" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.WRITABLE, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "expression" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.EXPRESSAO, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "simple-expr" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.EXPRESSAOSIMPLES, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "term" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.TERMO, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "factor" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.FATOR, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "constant" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.CONSTANTE, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
         "condition" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.CONDICAO, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "if-stmt" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.IFSTMT, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
         "assign-stmt" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.ASSIGNSTMT, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
         "stmt-list" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.STMTLIST, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
         "stmt" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.STMT, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "type" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.TIPO, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "decl-list" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.DECLARACAOLISTA, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "decl" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.DECLARACAO, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "ident-list" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.IDENTIFICADORLISTA, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "program" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.PRG, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "declare" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.DCL, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "begin" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.BGN, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "end" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.END, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "else" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.ELSE, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }
        "do" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.DO, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }

        "while" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.WHILE, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }
        "read" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.READ, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }
        "write" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.WRITE, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }

        ";" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.P_VIRG, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "," {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.VIRG, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
        }
        "integer" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.INTEGER, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }
        "then" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.THEN, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }            
        "if" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.IF, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }
        "caractere" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            return new Token(sym.CARACTERE, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
                }
	"identifier" {
            System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
            String id = yytext().toString();
            Token t;
            if (!TS.getTabelaSimbolos().containsKey(id)) {  			
		t = new Token(sym.IDENTIFIER, id, yyline(), yycolumn(), yychar(), yychar+yylenght());
		TS.getTabelaSimbolos().put(id, t);
                return t;
            }else{
                t = TS.getTabelaSimbolos().get(id);
                return (new Token(t.getTag(), id, yyline(), yycolumn(), yychar(), yychar+yylenght()));
            }
        }
}

<<EOF>> {
	System.out.println("line: "+(yyline+1)+" "+"col: "+(yycolumn+1)+" "+"match: --"+yytext()+"--");
	return (new Token(sym.EOF,yytext(),yyline(),yycolumn(),yychar(),yychar+1)); }

{NONNEWLINE_WHITE_SPACE_CHAR}+ { }

{NEWLINE} { }

. {
	System.out.println("Illegal character: <" + yytext().toString() + ">");
}