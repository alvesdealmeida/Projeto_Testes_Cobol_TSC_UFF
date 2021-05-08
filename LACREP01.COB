      *================================================================*
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. LACREP01.
      *================================================================*

       DATA                                                DIVISION.
       FILE                                        SECTION.
       WORKING-STORAGE                             SECTION.
       77  NUMERO      PIC 999 VALUE ZERO.
       77  PARES       PIC 999 VALUE ZERO.
       77  IMPARES     PIC 999 VALUE ZERO.
       77  D           PIC 999 VALUE ZERO.
       77  RESTO       PIC 999 VALUE ZERO.
       77  PP          PIC 99V99 VALUE ZERO.
       77  PI          PIC 99V99 VALUE ZERO.
       77  I           PIC 99  VALUE ZERO.
       77  MS          PIC ZZ9.99 VALUE ZERO.


      *================================================================*
       PROCEDURE                                           DIVISION.

           DISPLAY SPACE ERASE EOS
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
           DISPLAY "NUMERO" I
           ACCEPT NUMERO

           COMPUTE   D = NUMERO/2
           COMPUTE RESTO = NUMERO - (D*2)

           IF RESTO <> 0 THEN
               ADD 1 TO IMPARES
           ELSE
               ADD 1 TO PARES
           END-IF
           END-PERFORM

           COMPUTE   PP = ((PARES / 10)* 100)
           COMPUTE   PI = ((IMPARES / 10)* 100)
           DISPLAY SPACE ERASE EOS
           DISPLAY "QTD DE NUMEROS PARES:" AT 1010 PARES
           DISPLAY "QTD DE NUMEROS IMPARES:" AT 1110 IMPARES
           MOVE PP TO MS
           DISPLAY "PERCENTUAL DE NUMEROS PARES:" AT 1210 MS
           MOVE PI TO MS
           DISPLAY "PERCENTUAL DE NUMEROS IMPARES:" AT 1310 MS

           STOP RUN
            .
