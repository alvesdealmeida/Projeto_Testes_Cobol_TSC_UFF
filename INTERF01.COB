      *================================================================*
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. INTERF01.
      *================================================================*
       ENVIRONMENT                                         DIVISION.
       CONFIGURATION               SECTION.
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
      *================================================================*
       DATA                                                DIVISION.
       FILE                        SECTION.

       WORKING-STORAGE             SECTION.
       01  CLIENTES.
           05 CLI-CODIGO PIC 9(004).
           05 CLI-NOME   PIC X(030).
       SCREEN                      SECTION.
       01  TELA.
           05 LINE 01 COL 01 VALUE "TELA".
           05 LINE 03 COL 06 VALUE "CODIGO:".
           05 T-CODIGO ENTRY-FIELD USING
              CLI-CODIGO AUTO REVERSE REQUIRED
              PIC ZZZ9
              AFTER PROCEDURE CONTROLE-CODIGO.
           05 LINE 04 COL 06 VALUE "NOME:".
           05 T-NOME ENTRY-FIELD USING
              CLI-NOME AUTO UPPER REQUIRED.

      *================================================================*
       PROCEDURE                                            DIVISION.
           INICIO.
               DISPLAY TELA
               ACCEPT TELA
               GOBACK.
           CONTROLE-CODIGO.
               DISPLAY MESSAGE BOX
               "ESSE CONTROLE E EXECUTADO"
               " DEPOIS DE RECEBER O CAMPO CODIGO"
               .
