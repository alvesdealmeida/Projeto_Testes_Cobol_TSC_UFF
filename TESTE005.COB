      *================================================================*
       IDENTIFICATION                              DIVISION.
       PROGRAM-ID. TESTE005.
      *================================================================*

      *----------------------------------------------------------------*
       DATA                                        DIVISION.
       WORKING-STORAGE                 SECTION.
       77  NOME    PIC X(030)
              VALUE "SEBASTIAO ALVES".

      *----------------------------------------------------------------*
       PROCEDURE                                   DIVISION.
           DISPLAY "Nome do Cliente:" AT 1010 NOME REVERSE
           GOBACK.
