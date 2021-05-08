      *================================================================*
       IDENTIFICATION                                  DIVISION.
       PROGRAM-ID.     CONTAD001.
      *================================================================*

       ENVIRONMENT                                     DIVISION.
       CONFIGURATION                       SECTION.
       SPECIAL-NAMES.

       INPUT-OUTPUT                        SECTION.
       FILE-CONTROL.
      *================================================================*
       DATA                                            DIVISION.
       WORKING-STORAGE                     SECTION.
       77 CONTADOR         PIC  999 VALUE ZEROS.

      *================================================================*
       PROCEDURE                                       DIVISION.
       INICIO.
           ADD 1 TO CONTADOR
           DISPLAY CONTADOR
           IF CONTADOR = 100 THEN
               STOP RUN
           ELSE
               GO TO INICIO
           END-IF
           .
