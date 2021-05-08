      ******************************************************************
      * Author:SEBASTIÃO ALVES
      * Date: 24/02/2021
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRA002.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CLIENTE.
           02 NOME      PIC X(20) VALUE "SEBASTIAO ALVES".
           02 RG        PIC X(11) VALUE "4444444444".
           02 CPF       PIC X(11) VALUE "00000000001".
           02 ENDERECO  PIC X(20) VALUE "RUA PERU, 20 - SVP".
           02 DATANASC.
               03 DIA   PIC X(02) VALUE "19".
               03 MES   PIC X(02) VALUE "03".
               03 ANO   PIC X(04) VALUE "2021".
               66 MES-ANO RENAMES MES THRU ANO.
               78 MASCULINO VALUE "M".
               78 FEMININO  VALUE "F".
       01 GENERO PIC X.
           88 MASCULINA  VALUE "M".
           88 FEMININA   VALUE  "F".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY CLIENTE.
            DISPLAY NOME.
            SET MASCULINA TO TRUE.
            SET FEMININA TO TRUE.
            IF FEMININA
                DISPLAY GENERO.
                STOP RUN.
       END PROGRAM PROGRA002.
