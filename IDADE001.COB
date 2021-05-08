      ******************************************************************
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. IDADE001.
      *================================================================*

       DATA                                                DIVISION.
       FILE                                    SECTION.
       WORKING-STORAGE                         SECTION.
       77  IDADE PIC 9(003).
           88  CRIANCA VALUE 0 THRU 10.
           88  ADOLESCENTE VALUE 11 THRU 19.
           88  JOVEM VALUE 20 THRU 30.
           88  ADULTO VALUE 31 THRU 60.

      *================================================================*
       PROCEDURE                                           DIVISION.
           DISPLAY "IDADE:"
           ACCEPT IDADE
           EVALUATE TRUE
               WHEN CRIANCA
                   DISPLAY  "CRIANCA"
               WHEN ADOLESCENTE
                   DISPLAY  "AOLESCENTE"
               WHEN JOVEM
                   DISPLAY  "JOVEM"
               WHEN ADULTO
                   DISPLAY  "ADULTO"
           END-EVALUATE


           STOP RUN.
       END PROGRAM IDADE001.
