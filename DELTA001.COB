01234567890123456789012345678901234567890123456789
       IDENTIFICATION              DIVISION.
       PROGRAM.ID.   DELTA001.
       
       DATA                        DIVISION.
       WORKING-STORAGE    SECTION.
       
       77 WRK-A   PIC S9(02) VALUE ZEROS.
       77 WRK-B   PIC S9(02) VALUE ZEROS.
       77 WRK-C   PIC S9(02) VALUE ZEROS.
       77 WRK-DELTA PIC   S9(02) VALUE ZEROS.
       
       PROCEDURE                    DIVISION.
       
            DISPLAY "DIGITE VALOR PARA A:".
            ACCEPT WRK-A.
            DISPLAY "DIGITR VALOR PARA B:".
            ACCEPT WRK-B.
            DISPLAY "DIGITE VALOR PARA C;".
            ACCEPT WRK-C.
            
            COMPUTER WRK-DELTA = (WRK-B)**2  - 
                     WRK-A * WRK-C 
            IF WRK-DELTA IS NEGATIVE
                DISPLAY WRK-DELTA.
                DISPLAY " DELTA NEGATIVO!" 
                DISPLAY " NAO TEM RAIZ."
            IF WRK-DELTA IS POSITIVE 
                DISPLAY WRK- DELTA
                DISPLAY " TEM RAIZES."
            IF WRK-DELTA IS ZERO 
                DISPLAY WRK-DELTA
                DISPLAY " RAIZES SIMETICAS!"
            END-IF.
            
            STOP RUN.
            
