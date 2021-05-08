       IDENTIFICATION                              DIVISION.
       PROGRAM-ID. NOME0001.

       ENVIRONMENT                                 DIVISION.
       CONFIGURATION           SECTION.
       INPUT-OUTPUT            SECTION.
       FILE-CONTROL.

       DATA                                        DIVISION.
       FILE                    SECTION.

       WORKING-STORAGE         SECTION.
       77  NOME PIC X(030) VALUE SPACES.

       PROCEDURE                                   DIVISION.
           ACCEPT NOME AT 1111 REQUIRED REVERSE
           ACCEPT OMITTED

           GOBACK.
