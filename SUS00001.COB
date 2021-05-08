      ******************************************************************
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. SUS00001.
      *================================================================*
       DATA                                                DIVISION.
       FILE                                    SECTION.
       WORKING-STORAGE                         SECTION.
       77  IDADES PIC 9(003).
           88 CRIANCA  VALUE 0 THRU 10.
           88 ADOLESCENTE VALUE 11 THRU 19.
           88 JOVEM  VALUE 20 THRU 30.
           88 ADULTO VALUE 31 THRU 59.
           88 IDOSO VALUE 60 THRU 105.

      *================================================================*
       PROCEDURE DIVISION.
           DISPLAY "QUEM VIVE - QUEM MORRE:"
           DISPLAY " DIGITE A IDADE: "
           ACCEPT  IDADES
           EVALUATE TRUE
               WHEN CRIANCA DISPLAY "VIVE"
               WHEN ADOLESCENTE DISPLAY "VIVE"
               WHEN JOVEM DISPLAY "VIVE"
               WHEN ADULTO DISPLAY "VIVE"
               WHEN IDOSO DISPLAY "MORTE"
           END-EVALUATE
           STOP RUN.
