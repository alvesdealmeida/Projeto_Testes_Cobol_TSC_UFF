      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date:12-05-2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIA002.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-A      PIC S9(02) VALUE ZEROS.
       77 WRK-B      PIC S9(02) VALUE ZEROS.
       77 WRK-C      PIC S9(02) VALUE ZEROS.
       77 WRK-DELTA  PIC S9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
            DISPLAY "DIGITE A:".
            ACCEPT WRK-A.
            DISPLAY 'DIGITE B:'.
            ACCEPT WRK-B.
            DISPLAY "DIGITE C:".
            ACCEPT WRK-C.


            COMPUTE WRK-DELTA = (WRK-B)**2 - 4*WRK-A*WRK-C.
            IF  WRK-DELTA >= 0
                DISPLAY WRK-DELTA
                DISPLAY ' TEM RAIZ'
            ELSE
                DISPLAY WRK-DELTA
                DISPLAY "NAO TEM RAIZES"

            END-IF.
            STOP RUN.
       END PROGRAM MEDIA002.
