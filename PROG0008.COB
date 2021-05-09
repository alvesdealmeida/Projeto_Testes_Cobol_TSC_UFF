      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date: 09/05/2021
      *
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0008.
      ******************************************************************
       DATA DIVISION.
      *================================================================*
       FILE SECTION.
      *================================================================*
       WORKING-STORAGE SECTION.
       77 WRK-VALOR                       PIC 9(10) VALUE 10.
       77 WRK-VALOR2                      PIC 9(10) VALUE ZEROS.

       01 WRK-TOT.
           05 WRK-TOTAL               PIC 9(5) VALUE 19.
       01 WRK-TOT2.
           05 WRK-TOT                 PIC 9(5) VALUE ZEROS.
      *================================================================*
       PROCEDURE DIVISION.
            MOVE 20 TO WRK-VALOR2.

            DISPLAY WRK-VALOR2.
            DISPLAY WRK-VALOR.
            MOVE 70 TO WRK-VALOR2 WRK-VALOR.
            DISPLAY WRK-VALOR2.
            DISPLAY WRK-VALOR.
            MOVE WRK-TOTAL OF WRK-TOT TO WRK-VALOR.
            DISPLAY WRK-TOTAL.

            STOP RUN.
       END PROGRAM PROG0008.
