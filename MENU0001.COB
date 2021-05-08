      *================================================================*
       IDENTIFICATION                                  DIVISION.
       PROGRAM-ID.  MENU0001.
      *================================================================*

       ENVIRONMENT                                     DIVISION.
       CONFIGURATION                       SECTION.
       SPECIAL-NAMES.

       INPUT-OUTPUT                        SECTION.
       FILE-CONTROL.
      *================================================================*

       DATA                                            DIVISION.
       WORKING-STORAGE                     SECTION.
       77  OPCAO  PIC 9 VALUE ZERO.
       77  WOPCAO PIC 9 VALUE ZERO.

       SCREEN                              SECTION.
       01 MENU-PRINCIPAL.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "####################################".
           02 LINE 3 COL 1 VALUE "SISTEMA DE COMPRAS E VENDA ".
           02 LINE 5 COL 1 VALUE "####################################".
           02 LINE 7 COL 33 VALUE "MENU PRINCIPAL".
           02 LINE 10 COL 10 VALUE "[1] CADASTRO MERCADORIA".
           02 LINE 11 COL 10 VALUE "[2] CADSTRO DE CLIENTE".
           02 LINE 12 COL 10 VALUE "[3] CADASTRO VENDEDOR-COMPRADOR".
           02 LINE 13 COL 10 VALUE "[4] LISTAGEM DE MERCADORIAS".
           02 LINE 14 COL 10 VALUE "[5] LISTAGEM DE CLIENTES".
           02 LINE 15 COL 10 VALUE "[6] SAIR DO SISTEMA".
           02 LINE 18 COL 10 VALUE "DIGITE O NUMERO DESEJADO[...]".
           02 OPCAO LINE 18 COL 36 PIC 9 USING WOPCAO AUTO.
      *================================================================*

       PROCEDURE                                       DIVISION.
       INICIO.
           DISPLAY MENU-PRINCIPAL
           ACCEPT MENU-PRINCIPAL
           EVALUATE WOPCAO
       WHEN 1
           CALL "CADASTRO-MERCADORIA" USING WOPCAO
               GO TO INICIO
       WHEN 2
           CALL "CADASTRO-CLIENTE" USING WOPCAO
       WHEN 6
           STOP RUN
       WHEN OTHER
           GO TO INICIO
           END-EVALUATE
           .
