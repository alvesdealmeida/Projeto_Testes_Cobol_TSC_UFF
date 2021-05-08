      ******************************************************************
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. BOT00001.

       DATA                                                DIVISION.
       FILE                                    SECTION.
       WORKING-STORAGE                         SECTION.
       78  NEWLINE  VALUE H"0A" .




       PROCEDURE                                           DIVISION.

            DISPLAY
            "THIS IS LINE '", NEWLINE,
            "AND THIS IS LINE 2".
            STOP RUN.
