      *================================================================*
       IDENTIFICATION                              DIVISION.
       PROGRAM-ID. TESTE007.
      *================================================================*
       ENVIRONMENT                                 DIVISION.
      *----------------------------------------------------------------*
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.
      *----------------------------------------------------------------*
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
      *----------------------------------------------------------------*
      *================================================================*
       DATA                                        DIVISION.
      *----------------------------------------------------------------*
       FILE                        SECTION.
      *----------------------------------------------------------------*
       WORKING-STORAGE             SECTION.
       77  WRK-NOME    PIC X(20) VALUE SPACES.
       77  WRK-DATA    PIC 9(6)  VALUE ZEROES.
       77  WRK-DATA-JULIANA PIC 9(5) VALUE ZEROES.
       77  WRK-DIA          PIC 9(1) VALUE ZERO.
       77  WRK-HORA         PIC 9(8) VALUE ZEROES.
       77  WRK-VALOR        PIC 9(10) VALUE 10.
       77  WRK-VALOR2       PIC 9(10) VALUE ZEROS.
       01  WRK-TOT.
           05 WRK-TOTAL     PIC 9(5) VALUE 19.
       01  WRK-TOT2.
           05 WRK-TOTAL        PIC 9(5) VALUE ZEROS.



      *================================================================*
       PROCEDURE                                   DIVISION.
           ACCEPT  WRK-NOME.
           ACCEPT  WRK-DATA FROM DATE.
           ACCEPT  WRK-DATA-JULIANA FROM DAY.
           ACCEPT  WRK-DIA FROM DAY-OF-WEEK.
           ACCEPT  WRK-HORA FROM TIME.
      *     MOVE 20 TO WRK-VALOR2.                                     *
           MOVE WRK-VALOR TO WRK-VALOR2.
           MOVE WRK-TOTAL OF WRK-TOT TO WRK-VALOR.

           DISPLAY WRK-NOME.
           DISPLAY WRK-DATA.
           DISPLAY WRK-DATA-JULIANA.
           DISPLAY WRK-DIA.
           DISPLAY WRK-HORA.
           DISPLAY "VALOR2" WRK-VALOR2.
           DISPLAY "VALOR"  WRK-VALOR.

           STOP RUN.

      *================================================================*
