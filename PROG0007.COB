      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date: 09/05/2021
      *
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0007.
      ******************************************************************

       DATA DIVISION.
      *================================================================*
       FILE SECTION.
      *================================================================*
       WORKING-STORAGE SECTION.
       77 WRK-NOME                         PIC X(20) VALUE SPACES.
       77 WRK-DATA                         PIC 9(06) VALUE ZEROS.
       77 WRK-DATA-JULIANA                 PIC 9(05) VALUE ZEROS.
       77 WRK-DIA                          PIC 9(01) VALUE ZERO.
       77 WRK-HORA                         PIC 9(08) VALUE ZEROS.

      *================================================================*
       PROCEDURE DIVISION.
            ACCEPT WRK-NOME.
            DISPLAY WRK-NOME.
            DISPLAY "OLA," WRK-NOME.
            ACCEPT WRK-DATA FROM DATE.

            ACCEPT WRK-DATA-JULIANA FROM DAY.

            ACCEPT WRK-DIA FROM DAY-OF-WEEK.

            ACCEPT WRK-HORA FROM TIME.
            DISPLAY WRK-DATA.
            DISPLAY WRK-DATA-JULIANA.
            DISPLAY WRK-DIA.
            DISPLAY WRK-HORA.



            STOP RUN.
       END PROGRAM PROG0007.
