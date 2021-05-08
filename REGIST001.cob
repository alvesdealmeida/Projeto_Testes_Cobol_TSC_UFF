      ******************************************************************
      * Author: SEBATIAO ALVES
      * Date:   22/02/2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REGIST001.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CLIENTE.
           02 NOME     PIC X(20) VALUE "JOSE BENTO".
           02 RG       PIC X(11) VALUE "44444444444".
           02 CPF      PIC X(11) VALUE "55555555555".
           02 ENDERECO PIC X(20) VALUE "RUA XPSXT12".
           02 DATANASC.
               03 DIA  PIC   XX VALUE "03".
               03 MES  PIC   XX VALUE "09".
               03 ANO  PIC   X(04) VALUE "1193".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY CLIENTE.

       END PROGRAM REGIST001.
