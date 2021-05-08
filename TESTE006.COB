      *================================================================*
       IDENTIFICATION                                  DIVISION.
       PROGRAM-ID. TESTE006.
      *================================================================*
      * ==========Aqui ficara  a documentacao do  programa=============*
      *================================================================*
       ENVIRONMENT                                     DIVISION.
      *----------------------------------------------------------------*
       CONFIGURATION                   SECTION.
       SPECIAL-NAMES.
      *----------------------------------------------------------------*
       INPUT-OUTPUT                    SECTION.
       FILE-CONTROL.
      *----------------------------------------------------------------*
      *================================================================*
       DATA                                            DIVISION.
      *----------------------------------------------------------------*
       FILE                            SECTION.
       WORKING-STORAGE                 SECTION.
       77  NUMERO PIC 9(05).
       01  CLIENTE.
           02 NOME     PIC X(20) VALUE "SEBASTIAO ALVES".
           02 RG       PIC X(15) VALUE "100497007DETRAN".
           02 CPF      PIC X(11) VALUE "04455201750".
           02 ENDERECO PIC X(20) VALUE "RUA PERU 20".
           02 DATANASC.
               03 DIA PIC XX VALUE "22".
               03 MES PIC XX VALUE "02".
               03 ANO PIC X(04) VALUE "2020".
               66 MES-AN0 RENAMES MES THRU ANO.
       01  GENERO PIC X.
           88 MASCULINO VALUE "M".
           88 FEMININO  VALUE "F".


      *================================================================*
       PROCEDURE                                       DIVISION.
           SET MASCULINO TO TRUE.
           IF FEMININO
           STOP RUN.
