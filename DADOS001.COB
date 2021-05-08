      ******************************************************************
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. DADOS001.
      *================================================================*

       DATA                                                DIVISION.
       FILE                                    SECTION.
       WORKING-STORAGE                         SECTION.
       77  SALARIO PIC 9(007).
       77  NOME    PIC X(30).
       77  SALDO   PIC 9(010).
       77  INDICE  PIC 9(007).
       01  DATA-DE-HOJE.
           05 ANO PIC 9(004).
           05 MES PIC 9(002).
           05 DIA PIC 9(002).
      *================================================================*
       PROCEDURE                                           DIVISION.
           ACCEPT SALARIO
           ACCEPT NOME
           ACCEPT SALDO
           ACCEPT INDICE
           ACCEPT ANO
           ACCEPT MES
           ACCEPT DIA
           DISPLAY SALARIO
           DISPLAY NOME
           DISPLAY SALDO
           DISPLAY INDICE
           DISPLAY ANO
           DISPLAY MES
           DISPLAY DIA


           STOP RUN.
