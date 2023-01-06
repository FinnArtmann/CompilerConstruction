%{
	// Header Code

	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <time.h>

	#include "vars_interp.h"
	#include "ast.h"

	int yylex(void);

	extern FILE *yyin;
	extern int yy_flex_debug;
	extern int yylineno;
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
		fprintf(stderr, "Error at line %d\n", yylineno);
	}
	
%}

%define parse.lac full
%define parse.error verbose

// Definitions



%union{
	char* str;
	int num;
	double real;
	struct astnode* ast;
}

// Keywords
%token IF
%token ELSE
%token FOR
%token RETURN
%token PRINT
%token SCAN
%token RAND_INT
%token GLOBAL
%token <str>MAIN


// Operators
%token PLUS
%token MINUS
%token MULT
%token DIV
%token MOD
%token LE
%token GE
%token EQ
%token NE
%token GT
%token LT
%token AND
%token OR
%token ASSIGN

// Special
%token SEMICOLON
%token COMMA
%token ROUND_OPEN
%token ROUND_CLOSE
%token CURLY_OPEN
%token CURLY_CLOSE



%token <str> STR TYPE ID OP 
%token <num> NUM
%token <real> REAL
%start start

%type <ast> start program functions function function_call arguments parameters parameter 
%type <ast> main body statements statement declarations declaration global_declarations 
%type <ast> global_declaration assignment expression if_statement for_statement return_statement 
%type <ast> print_statement scan_statement rand_int_statement term factor

// Other Grammar tokens
%token PROGRAM STATEMENTS STATEMENT DECLARATIONS GLOBAL_DECLARATIONS FUNCTIONS PARAMETERS
%token BODY ASSIGNMENT EXPR_TERM EXPR_FUNCTION_CALL EXPR_PLUS EXPR_MINUS EXPR_LE EXPR_GE
%token EXPR_LT EXPR_GT EXPR_EQ EXPR_NE EXPR_AND EXPR_OR TERM_FACTOR TERM_MUL TERM_DIV
%token TERM_MOD FACTOR_ID FACTOR_NUM FACTOR_REAL FACTOR_PARENTHESIS FACTOR_FUNCTION_CALL
%token FACTOR_RAND IFELSE PRINT_STR DECLARATION GLOBAL_DECLARATION FUNCTION_CALL PARAMETER
%token FUNCTION ARG_EXPR ARGS_EXPR


%%
 

// Rules and Actions

start: program { print_ast($1, 0); printf("\n"); exec_ast($1);} //TODO: Execute AST



program: global_declarations functions main {
       		printf(">>> [SŦYX parser]: Program syntax is valid\n");
                 
                $$ = new_astnode(PROGRAM);
                $$->child[0] = $1;
                $$->child[1] = $2;
				$$->child[2] = $3;

	} 
    |functions main {
		printf(">>> [SŦYX parser]: Program syntax is valid\n");
		
		$$ = new_astnode(PROGRAM);
		$$->child[0] = $1;
		$$->child[1] = $2;
	}
	| main {
		printf(">>> [SŦYX parser] Program syntax is valid\n");
		
		$$ = new_astnode(PROGRAM);
		$$->child[0] = $1;
	}

functions: function { $$ = new_astnode(FUNCTIONS); $$->child[0] = $1; }
	 | functions function { $$ = new_astnode(FUNCTIONS); $$->child[0] = $1; $$->child[1] = $2; }

function: TYPE ID ROUND_OPEN parameters ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE 
	{ 
		$$ = new_astnode(FUNCTION);
		$$->child[0] = $4;
		$$->child[1] = $7;
		$$->val.str = $2;
		$$->data_type = AST_ID_T;

	}

parameters: parameter { $$ = new_astnode(PARAMETERS); $$->child[0] = $1; }
	 | parameters COMMA parameter { $$ = new_astnode(PARAMETERS); $$->child[0] = $1; $$->child[1] = $3; }
	 | %empty { $$ = NULL; }

parameter: TYPE ID { $$ = new_astnode(PARAMETER); $$->val.str = $2; $$->data_type = AST_ID_T; }


main: TYPE MAIN ROUND_OPEN ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE
    {	
	if(strcmp($1, "ı’Ŧ") != 0){
		printf("Error: Main function must return ı’Ŧ and must have identifier ºÆı’\n");
		printf("Found: TYPE: %s \n", $1);
		exit(1);
	}
	
	
	$$ = new_astnode(MAIN);
	$$->val.str = $2;
	$$->data_type = AST_ID_T;
	$$->child[0] = $6;
    }

body: statements { $$ = new_astnode(BODY); $$->child[0] = $1; }
    | declarations statements { $$ = new_astnode(BODY); $$->child[0] = $1; $$->child[1] = $2; }
    | declarations { $$ = new_astnode(BODY); $$->child[0] = $1; }
    | %empty { $$ = NULL; }

global_declarations: global_declaration { $$ = new_astnode(GLOBAL_DECLARATIONS); $$->child[0] = $1; }
	 | global_declarations global_declaration { $$ = new_astnode(GLOBAL_DECLARATIONS); $$->child[0] = $1; $$->child[1] = $2; }

global_declaration: GLOBAL TYPE ID SEMICOLON { $$ = new_astnode(GLOBAL_DECLARATIONS); $$->val.str = $3; $$->data_type = AST_ID_T; }

declarations: declaration { $$ = new_astnode(DECLARATIONS); $$->child[0] = $1; }
	    | declarations declaration { $$ = new_astnode(DECLARATIONS); $$->child[0] = $1; $$->child[1] = $2; }

declaration: TYPE ID SEMICOLON { $$ = new_astnode(DECLARATION); $$->val.str = $2; $$->data_type = AST_ID_T; }

statements: statement { $$ = new_astnode(STATEMENTS); $$->child[0] = $1; }
	  | statements statement { $$ = new_astnode(STATEMENTS); $$->child[0] = $1; $$->child[1] = $2; }

statement: assignment { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | if_statement { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | for_statement { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | return_statement { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | print_statement { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | scan_statement { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | rand_int_statement { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }
	 | CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(STATEMENT); $$->child[0] = $2; }
	 | expression SEMICOLON { $$ = new_astnode(STATEMENT); $$->child[0] = $1; }


assignment: ID ASSIGN expression SEMICOLON { $$ = new_astnode(ASSIGNMENT); $$->val.str = $1; $$->data_type = AST_ID_T; $$->child[0] = $3; }

if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(IF); $$->child[0] = $3; $$->child[1] = $6; }
	    | IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(IFELSE); $$->child[0] = $3; $$->child[1] = $6; $$->child[2] = $10; }
	    

for_statement: FOR ROUND_OPEN expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(FOR); $$->child[0] = $3; $$->child[1] = $5; $$->child[2] = $8; }

return_statement: RETURN expression SEMICOLON { $$ = new_astnode(RETURN); $$->child[0] = $2; }

print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON { $$ = new_astnode(PRINT); $$->child[0] = $3; }
		| PRINT ROUND_OPEN STR ROUND_CLOSE SEMICOLON { $$ = new_astnode(PRINT_STR); $$->val.str = $3; $$->data_type = AST_STR_T; }

scan_statement: SCAN ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode(SCAN); $$->val.str = $3; $$->data_type = AST_ID_T; }

rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode(RAND_INT); $$->val.str = $3; $$->data_type = AST_ID_T; }

function_call: ID ROUND_OPEN arguments ROUND_CLOSE { $$ = new_astnode(FUNCTION_CALL); $$->val.str = $1; $$->data_type = AST_ID_T; $$->child[0] = $3; }

arguments: expression { $$ = new_astnode(ARG_EXPR); $$->child[0] = $1; }
	 | arguments COMMA expression { $$ = new_astnode(ARGS_EXPR); $$->child[0] = $1; $$->child[1] = $3; }
	 | %empty { $$ = NULL; }

expression: term { $$ = new_astnode(EXPR_TERM); $$->child[0] = $1; $$->data_type = $$->child[0]->data_type; }
	| expression PLUS term { $$ = new_astnode(EXPR_PLUS); $$->child[0] = $1; $$->child[1] = $3; }
	| expression MINUS term { $$ = new_astnode(EXPR_MINUS); $$->child[0] = $1; $$->child[1] = $3; }
	| expression LE term { $$ = new_astnode(EXPR_LE); $$->child[0] = $1; $$->child[1] = $3; }
	| expression GE term { $$ = new_astnode(EXPR_GE); $$->child[0] = $1; $$->child[1] = $3; }
	| expression EQ term { $$ = new_astnode(EXPR_EQ); $$->child[0] = $1; $$->child[1] = $3; }
	| expression NE term { $$ = new_astnode(EXPR_NE); $$->child[0] = $1; $$->child[1] = $3; }
	| expression GT term { $$ = new_astnode(EXPR_GT); $$->child[0] = $1; $$->child[1] = $3; }
	| expression LT term { $$ = new_astnode(EXPR_LT); $$->child[0] = $1; $$->child[1] = $3; }
	| expression AND term { $$ = new_astnode(EXPR_AND); $$->child[0] = $1; $$->child[1] = $3; }
	| expression OR term { $$ = new_astnode(EXPR_OR); $$->child[0] = $1; $$->child[1] = $3; }
	  

term: factor { $$ = new_astnode(TERM_FACTOR); $$->child[0] = $1; $$->data_type = $$->child[0]->data_type; }
	| term MULT factor { $$ = new_astnode(TERM_MUL); $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "*"; $$->data_type = AST_STR_T; }
	| term DIV factor { $$ = new_astnode(TERM_DIV); $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "/"; $$->data_type = AST_STR_T; }
	| term MOD factor { $$ = new_astnode(TERM_MOD); $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "%"; $$->data_type = AST_STR_T; }

factor: ID { $$ = new_astnode(FACTOR_ID); $$->val.str = $1; $$->data_type = AST_NUM_T; }
    | NUM { $$ = new_astnode(FACTOR_NUM); $$->val.num = $1; $$->data_type = AST_NUM_T; }
	| REAL { $$ = new_astnode(FACTOR_REAL); $$->val.real = $1; $$->data_type = AST_REAL_T; }
	| function_call { $$ = new_astnode(FACTOR_FUNCTION_CALL); $$->child[0] = $1; }
	| ROUND_OPEN expression ROUND_CLOSE { $$ = new_astnode(FACTOR_PARENTHESIS); $$->child[0] = $2; $$->val.str = "(expr)"; $$->data_type = AST_STR_T; }
	| RAND_INT ROUND_OPEN NUM ROUND_CLOSE { $$ = new_astnode(FACTOR_RAND); $$->val.num = $3; $$->data_type = AST_NUM_T; }



%%

// C Code
int main(int arc, char **argv)
{
    yy_flex_debug = 0;
    yydebug = 0;
    yyin = fopen(argv[1], "r");
    return yyparse();
}
