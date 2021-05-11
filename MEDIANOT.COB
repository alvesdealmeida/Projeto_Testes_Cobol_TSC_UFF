      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIANOT.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1         PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA2         PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA3         PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA4         PIC 9(02)V99 VALUE ZEROS.
       77 WRK-MEDIA         PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
            ACCEPT  WRK-NOTA1.
            ACCEPT  WRK-NOTA2.
            ACCEPT  WRK-NOTA3.
            ACCEPT  WRK-NOTA4.

            COMPUTE WRK-MEDIA EQUAL (WRK-NOTA1 + WRK-NOTA2 +
                                     WRK-NOTA3 + WRK-NOTA4)/4.
            DISPLAY WRK-MEDIA.
            STOP RUN.
       END PROGRAM MEDIANOT.
