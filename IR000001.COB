      ******************************************************************
       IDENTIFICATION                                       DIVISION.
       PROGRAM-ID. IR000001.
      *================================================================*

       DATA                                                 DIVISION.
       FILE                                    SECTION.
       WORKING-STORAGE                         SECTION.
       77  SALARIO PIC     9(07)V99.
       77  INSS    PIC     9(02).
       77  IR      PIC     9(02).

      *================================================================*
       PROCEDURE                                            DIVISION.

           DISPLAY "SALARIO:"
           ACCEPT SALARIO



           COMPUTE INSS = SALARIO * 0.25
           DISPLAY "INSS:" INSS

           COMPUTE IR = SALARIO * 0.11
           DISPLAY "IR:" IR

           COMPUTE SALARIO = SALARIO - INSS - IR
           DISPLAY "SALARIO LIQUIDO:" SALARIO

           STOP RUN.
