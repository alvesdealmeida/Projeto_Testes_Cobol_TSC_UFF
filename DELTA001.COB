      ******************************************************************
      * Author:SEBASTIAO
      * Date: 26-02-2020
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DELTA001.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-A PIC 9(02) VALUE 2.
       77  WRK-B PIC 9(02) VALUE 1.
       77  WRK-C PIC 9(02) VALUE 1.
       77  WRK-DT PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
            COMPUTE WRK-DT = WRK-B**2 + 4*WRK-A*WRK-C.
            DISPLAY WRK-DT.
            STOP RUN.
