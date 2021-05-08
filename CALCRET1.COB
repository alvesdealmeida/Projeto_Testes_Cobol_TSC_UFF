      *================================================================*
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID.     CALCRET1.
      *================================================================*
       ENVIRONMENT                                         DIVISION.
       CONFIGURATION                           SECTION.
       SPECIAL-NAMES.

       INPUT-OUTPUT                            SECTION.
       FILE-CONTROL.
      *================================================================*

       DATA                                                DIVISION.
       WORKING-STORAGE                         SECTION.
       77  LARGURA         PIC 9(003) VALUE ZEROS.
       77  ALTURA          PIC 9(003) VALUE ZEROS.
       77  AREA-RESULT     PIC 9(006) VALUE ZEROS.
      *================================================================*

       PROCEDURE                                           DIVISION.
       INICIO.
           DISPLAY SPACE ERASE EOS
           DISPLAY "CALCULO AREA QUADRADO RETANGULO" AT 0521
           DISPLAY "LARGURA" AT 1010
           DISPLAY "ALTURA"  AT 1210

           ACCEPT LARGURA AT 1019
           ACCEPT ALTURA  AT 1219
           MULTIPLY LARGURA BY ALTURA GIVING AREA-RESULT
           DISPLAY "AREA:" AT 1410 AREA-RESULT
           STOP RUN
           .
