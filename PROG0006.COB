      ******************************************************************
      * Author:SEBASTIAO ALVES
      * Date: 09/05/2021
      *
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0006.
      ******************************************************************
       DATA DIVISION.
      *================================================================*
       FILE SECTION.
      *================================================================*
       WORKING-STORAGE SECTION.
       01 CLIENTE.
           02 NOME                   PIC X(20) VALUE "SEBASTIAO ALVES".
           02 RG                     PIC X(11) VALUE "44444444444".
           02 CPF                    PIC X(11) VALUE "99999999999".
           02 ENDERECO               PIC X(20) VALUE "RUA B, 220".
           02 DATANASC.
               03 DIA                PIC X(02) VALUE "29".
               03 MES                PIC X(02) VALUE "01".
               03 ANO                PIC X(04) VALUE "1975".

      ******************************************************************
       PROCEDURE DIVISION.

            DISPLAY NOME
            DISPLAY RG
            DISPLAY CPF
            DISPLAY ENDERECO
            DISPLAY DATANASC
            DISPLAY CLIENTE
            STOP RUN.
       END PROGRAM PROG0006.
