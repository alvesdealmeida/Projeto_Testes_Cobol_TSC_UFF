       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. VALIDAR1.
      *================================================================*
       ENVIRONMENT                                         DIVISION.
       CONFIGURATION                           SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT                            SECTION.
       FILE-CONTROL.
      *================================================================*
       DATA                                                DIVISION.
       FILE SECTION.
       WORKING-STORAGE                         SECTION.

       77  TELA            PIC  9(002). COPY CWKEYS.

       LINKAGE                                 SECTION.
       01  ERRO    PIC  9(001).
       01  DADOS   PIC  X(005).
       01  TELA-CHAVE REDEFINES DADOS.
           05 FILENAME-DESCRICAO          PIC X(030).
           05 FILENAME-PRECO              PIC 9(008)V99.
           05 CWRADIO OCCURS 3            PIC X(001).
           05 CWCHECK OCCURS 3            PIC X(001).
       01  FIELD                          PIC X(030).
       01  SUBSCRIPT                      PIC 9(003).
      *================================================================*
       PROCEDURE                                           DIVISION.

       000-INICIO.
           MOVE 0 TO ERRO
           ACCEPT TELA FROM ESCAPE KEY

           EVALUATE FIELD
           WHEN "FILENAME-DESCRICAO"
           IF FILENAME-DESCRICAO = SPACES
               EXEC COBOLWARE SEND

           STOP RUN.
       END PROGRAM VALIDAR1.
