/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_SINT_H_INCLUDED
# define YY_YY_SINT_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    NUM = 258,                     /* NUM  */
    ID = 259,                      /* ID  */
    INT = 260,                     /* INT  */
    IF = 261,                      /* IF  */
    ELSE = 262,                    /* ELSE  */
    WHILE = 263,                   /* WHILE  */
    GE = 264,                       /* GE  */
    LE = 265,
    NE = 266,
    EQ = 267,
    NUM = 268,
    ID = 269,
    FLOAT = 270,
    CHAR = 271,
    DOUBLE = 272,
    VOID = 273,
    LONG = 274,
    SHORT = 275,
    UNSIGNED = 276,
    SIGNED = 277,
    SIZEOF = 278,
    AT_MOD = 279,
    FOR = 280,
    AND = 281,
    OR = 282,
    INC = 283,
    DEC = 284,
    AT_SOMA = 285,
    AT_SUBT = 286,
    AT_MULT = 287,
    AT_DIV = 288,
    STRUCT = 289,
    RETURN = 290,
    DESL_DIR = 291,
    DESL_ESQ = 292,
    SWITCH = 293,
    CASE = 294,
    BREAK = 295,
    DEFAULT = 296,
    TYPEDEF = 297,
    DESL_ESQ = 298,
    DESL_DIR = 299,
    SIZEOF = 300

  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define NUM 258
#define ID 259
#define INT 260
#define IF 261
#define ELSE 262
#define WHILE 263
#define GE 264
#define LE 265
#define NE 266
#define EQ 267
#define NUM 268
#define ID 269
#define FLOAT 270
#define CHAR 271
#define DOUBLE 272
#define VOID 273
#define LONG 274
#define SHORT 275
#define UNSIGNED 276
#define SIGNED 277
#define SIZEOF 278
#define AT_MOD 279
#define FOR 280
#define AND 281
#define OR 282
#define INC 283
#define DEC 284
#define AT_SOMA 285
#define AT_SUBT 286
#define AT_MULT 287
#define AT_DIV 288
#define STRUCT 289
#define RETURN 290
#define DESL_DIR 291
#define DESL_ESQ 292
#define SWITCH 293
#define CASE 294
#define BREAK 295
#define DEFAULT 296
#define TYPEDEF 297
#define DESL_ESQ 298
#define DESL_DIR 299
#define SIZEOF 300

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_SINT_H_INCLUDED  */
