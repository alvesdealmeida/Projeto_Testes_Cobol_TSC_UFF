      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date:27/02/2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRA003.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME          PIC X(20) VALUE SPACES.
       77 WRK-DATA          PIC 9(6)  VALUE ZEROS.
       77 WRK-DATA-JULIANA  PIC 9(5)  VALUE ZEROS.
       77 WRK-DIA           PIC 9(1)  VALUE ZERO.
       77 WRK-HORA          PIC 9(8)  VALUE ZEROS.
       PROCEDURE DIVISION.
            ACCEPT WRK-NOME.
            DISPLAY "OLA!"   WRK-NOME.
            STOP RUN.
       END PROGRAM PROGRA003.
