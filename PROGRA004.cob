      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date: 28/02/2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRA004.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR         PIC 9(10) VALUE 10.
       77 WRK-VALOR2        PIC 9(18) VALUE ZEROS.
       PROCEDURE DIVISION.

      *      MOVE  20 TO WRK-VALOR2.                                   *
      *      DISPLAY WRK-VALOR2.                                       *
      *      MOVE WRK-VALOR TO WRK-VALOR2.                             *
      *      DISPLAY WRK-VALOR2.                                       *
             MOVE 70 TO WRK-VALOR2 WRK-VALOR.
             DISPLAY WRK-VALOR2.
             DISPLAY WRK-VALOR.
            STOP RUN.
       END PROGRAM PROGRA004.
