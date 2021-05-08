      ******************************************************************
       IDENTIFICATION                                       DIVISION.
       PROGRAM-ID. CPF00001.
      *================================================================*
       ENVIRONMENT                                          DIVISION.
       CONFIGURATION                               SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT                                SECTION.
       FILE-CONTROL.

      *================================================================*

       DATA                                                 DIVISION.
       FILE                                        SECTION.
       WORKING-STORAGE                             SECTION.
       77  IND     PIC     99.
       77  D1      PIC     9.
       77  D2      PIC     9.
       77  SOMA    PIC     999.
       77  LIMITE  PIC     99 VALUE 9.
       01  CPF-DADOS.
           03 CPF  PIC  9(11).
           03 CPF-RED REDEFINES CPF.
               05 TAB-CPF PIC 9 OCCURS 11 TIMES.
      *    GENELAL ESTE REMINDES-N PRECISA CRIAR OUTRO CAMPO.

      *================================================================*

       PROCEDURE                                            DIVISION.
       LER.
           ACCEPT CPF.
           IF CPF = 0
               STOP RUN.
           MOVE 9 TO LIMITE.
           PERFORM LOOP VARYING IND FROM 1 BY 1 UNTIL IND > LIMITE .
           DIVIDE SOMA BY 11 GIVING TALLY  REMAINDER D1.


           COMPUTE D1 = 11 - D1.
           MOVE 10 TO LIMITE.
           PERFORM LOOP VARYING IND FROM 1 BY 1 UNTIL IND > LIMITE.
           DIVIDE SOMA BY 11 GIVING TALLY REMAINDER D2.

           IF D1 = TAB-CPF(10) AND D2 = TAB-CPF(11)
               DISPLAY "CPF OK" CPF
           ELSE
               DISPLAY "CPF INVALIDO"
           GO TO LER.

       LOOP.
           COMPUTE SOMA = SOMA + TAB-CPF(IND) * (LIMITE + 2 - IND)
           .
