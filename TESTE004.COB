      *================================================================*
       IDENTIFICATION                          DIVISION.
       PROGRAM-ID. TESTE004.
      *================================================================*

       DATA                                    DIVISION.
       WORKING-STORAGE             SECTION.
       77  DATAATUAL PIC 9(008).
       77  HORAATUAL PIC 9(008).
      *================================================================*

       PROCEDURE                               DIVISION.
           ACCEPT DATAATUAL FROM DATE
           ACCEPT HORAATUAL FROM TIME
           GOBACK.
