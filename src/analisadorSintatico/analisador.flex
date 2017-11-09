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

LETTER = "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J" | "K" | "L"
| "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T" | "U" | "V" | "W" | "X" | "Y" | "Z" | "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" | "l" | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t" | "u" | "v" | "w" | "x" | "y" | "z"
DIGIT = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"
NONNEWLINE_WHITE_SPACE_CHAR=[\ \t\b]
NEWLINE=\r|\n|\r\n
RELOP=[=|>|>=|<|<=|<>]
ADDOP=[+|-]
MULOP=[*|/]
LITERAL=\"{CARACTERE}*\"
CARACTERE=[^\"]
IDENTIFIER = {LETTER}({LETTER}|{DIGIT})*

%%
  

<YYINITIAL> {

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
        "wrire" {
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
	{IDENTIFIER} {
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