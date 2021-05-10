      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date: 10-05-2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0009.
      ******************************************************************
       DATA DIVISION.
      *================================================================*
       FILE SECTION.
      *================================================================*
       WORKING-STORAGE SECTION.
       77 WRK-ACUMULADOR              PIC 9(2) VALUE 10.
       77 WRK-ACUMULADOR2             PIC 9(2) VALUE ZEROS.

      *================================================================*
       PROCEDURE DIVISION.
            ADD 1 TO WRK-ACUMULADOR.
            ADD 1 1 TO WRK-ACUMULADOR  WRK-ACUMULADOR2.

            ADD 1 GIVING WRK-ACUMULADOR
            ON SIZE ERROR
               DISPLAY 'ERRO ENCCONTRADO'
            END-ADD.

            DISPLAY WRK-ACUMULADOR.
            DISPLAY WRK-ACUMULADOR2.

            DISPLAY WRK-ACUMULADOR.

            STOP RUN.
       END PROGRAM PROG0009.
