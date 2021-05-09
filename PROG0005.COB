      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date: 09/05/2021
      *
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0005.
      ******************************************************************

       DATA DIVISION.

      *================================================================*
       FILE SECTION.
      *================================================================*
       WORKING-STORAGE SECTION.
       77 WRK-SALDO                     PIC 9(10) VALUE ZEROS.
       77 WRK-RESULTADO                 PIC 9(10) VALUE ZEROS.
       77 WRK-VALOR                     PIC 9(10) VALUE ZEROS.

      *================================================================*

       PROCEDURE DIVISION.
            MOVE 100                       TO WRK-SALDO
      *      MOVE  50                       TO WRK-VALOR
             SUBTRACT 50                   FROM WRK-SALDO
             SUBTRACT WRK-VALOR FROM WRK-SALDO GIVING WRK-RESULTADO

            DISPLAY WRK-RESULTADO
            STOP RUN.
       END PROGRAM PROG0005.
