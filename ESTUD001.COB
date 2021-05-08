       IDENTIFICATION                                  DIVISION.
       PROGRAM-ID.     ESTUD001.

      *================================================================*
       ENVIRONMENT                                     DIVISION.
       CONFIGURATION               SECTION.
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.

       SELECT ESTUDANTES ASSIGN TO "ESTUDANTES.DAT"
       ORGANIZATION IS INDEXED
       ACCESS MODE IS DYNAMIC
       RECORD KEY IS CODIGO
       ALTERNATE KEY IS NOME WITH DUPLICATES
       FILE STATUS IS FS-ESTUDANTES.
      *================================================================*
       DATA                                            DIVISION.
       FILE                        SECTION.
       FD ESTUDANTES.
           01 REGISTRO-ESTUDANTES.
               02 CODIGO PIC 9999 VALUES ZEROS.
               02 NOME   PIC X(50) VALUES SPACES.
               02 NOTA1 PIC 9999 VALUES ZEROS.
               02 NOTA2 PIC 9999 VALUES ZEROS.
               02 NOTA3 PIC 9999 VALUES ZEROS.
               02 NOTA4 PIC 9999 VALUES ZEROS.

           01 REG-ESTUDANTES.
               02 WCODIGO  PIC 9999 VALUES ZEROS.
               02 WNOME    PIC X(50) VALUES SPACES.
               02 WNOTA1   PIC 9999 VALUES ZEROS.
               02 WNOTA2   PIC 9999 VALUES ZEROS.
               02 WNOTA3   PIC 9999 VALUES ZEROS.
               02 WNOTA4   PIC 9999 VALUES ZEROS.

      *================================================================*
       WORKING-STORAGE              SECTION.
           01 FS-ESTUDANTES.
               02 FS-ESTUDANTES-1 PIC 9.
               02 FS-ESTUDANTES-2 PIC 9.
               02 FS-ESTUDANTES-R REDEFINES FS-ESTUDANTES-2 PIC 99
               COMP-X.
           77 OPCAO  PIC X VALUE SPACES.

      *================================================================*

       PROCEDURE                                       DIVISION.
       ABERTURA.
       OPEN I-O ESTUDANTES.
       INICIO.
           DISPLAY SPACE ERASE EOS
           PERFORM TELA
           IF OPCAO ="S"  OR OPCAO = "s" THEN
               PERFORM GRAVA-DADOS
               PERFORM LIMPA-CAMPOS
               GO TO INICIO
           ELSE
               GO TO INICIO
           END-IF
           .
       TELA.
           DISPLAY "CASATRO DE ESTUDANTES"  AT 0230
           DISPLAY "CODIGO       :"  AT 0605
           DISPLAY "NOME         ;"  AT 0705
           DISPLAY "NOTA1        :"  AT 0805
           DISPLAY "NOTA2        :"  AT 0905
           DISPLAY "NOTA3        :"  AT 1005
           DISPLAY "NOTA4        :"  AT 1105

           ACCEPT WCODIGO AT 0625
           IF WCODIGO = 9999 THEN CLOSE ESTUDANTES
           STOP RUN
           END-IF

           ACCEPT WNOME AT 0725
           ACCEPT WNOTA1 AT 0825
           ACCEPT WNOTA2 AT 0925
           ACCEPT WNOTA3 AT 1025
           ACCEPT WNOTA4 AT 1125

           DISPLAY "OS DADOS ESTAO CORRETOS  S-N" AT 1525
           ACCEPT OPCAO
           .
       LIMPA-CAMPOS.
           MOVE SPACES TO REG-ESTUDANTES.
       GRAVA-DADOS.
           MOVE REG-ESTUDANTES TO REGISTRO-ESTUDANTES
           WRITE REGISTRO-ESTUDANTES.
