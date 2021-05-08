      ******************************************************************
      * Author: SEBASTIAO ALVES DE ALMEIDA
      * Date: 21/02/2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRA001.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME    PIC X(20) VALUE 'SEBASTIAO ALVES'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "OLA MUNDO!"
            DISPLAY WRK-NOME.
            STOP RUN.
       END PROGRAM PROGRA001.
