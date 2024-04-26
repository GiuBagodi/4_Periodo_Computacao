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
    GE = 264,                      /* GE  */
    DO = 265,                      /* DO  */
    LE = 266,                      /* LE  */
    NE = 267,                      /* NE  */
    EQ = 268,                      /* EQ  */
    FLOAT = 269,                   /* FLOAT  */
    CHAR = 270,                    /* CHAR  */
    DOUBLE = 271,                  /* DOUBLE  */
    VOID = 272,                    /* VOID  */
    LONG = 273,                    /* LONG  */
    SHORT = 274,                   /* SHORT  */
    UNSIGNED = 275,                /* UNSIGNED  */
    SIGNED = 276,                  /* SIGNED  */
    SIZEOF = 277,                  /* SIZEOF  */
    AT_MOD = 278,                  /* AT_MOD  */
    FOR = 279,                     /* FOR  */
    AND = 280,                     /* AND  */
    OR = 281,                      /* OR  */
    INC = 282,                     /* INC  */
    DEC = 283,                     /* DEC  */
    AT_SOMA = 284,                 /* AT_SOMA  */
    AT_SUBT = 285,                 /* AT_SUBT  */
    AT_MULT = 286,                 /* AT_MULT  */
    AT_DIV = 287,                  /* AT_DIV  */
    STRUCT = 288,                  /* STRUCT  */
    RETURN = 289,                  /* RETURN  */
    DESL_DIR = 290,                /* DESL_DIR  */
    DESL_ESQ = 291,                /* DESL_ESQ  */
    SWITCH = 292,                  /* SWITCH  */
    CASE = 293,                    /* CASE  */
    BREAK = 294,                   /* BREAK  */
    DEFAULT = 295,                 /* DEFAULT  */
    TYPEDEF = 296                  /* TYPEDEF  */
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
#define DO 265
#define LE 266
#define NE 267
#define EQ 268
#define FLOAT 269
#define CHAR 270
#define DOUBLE 271
#define VOID 272
#define LONG 273
#define SHORT 274
#define UNSIGNED 275
#define SIGNED 276
#define SIZEOF 277
#define AT_MOD 278
#define FOR 279
#define AND 280
#define OR 281
#define INC 282
#define DEC 283
#define AT_SOMA 284
#define AT_SUBT 285
#define AT_MULT 286
#define AT_DIV 287
#define STRUCT 288
#define RETURN 289
#define DESL_DIR 290
#define DESL_ESQ 291
#define SWITCH 292
#define CASE 293
#define BREAK 294
#define DEFAULT 295
#define TYPEDEF 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_SINT_H_INCLUDED  */
