      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTAR01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-FRASE  PIC 9(20).
       77  WRK-RESULTADO PIC 9(20).
       PROCEDURE DIVISION.

            DISPLAY "DIGITE A FRASE:".
            ACCEPT WRK-FRASE.

            COMPUTE WRK-RESULTADO =  WRK-FRASE * 5

            DISPLAY WRK-RESULTADO
            STOP RUN.
       END PROGRAM TESTAR01.
