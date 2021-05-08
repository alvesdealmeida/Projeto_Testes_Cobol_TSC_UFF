      ******************************************************************
      *
      *               CADASTRO DE CIENTES
      *
      ******************************************************************

           IDENTIFICATION                                  DIVISION.
           PROGRAM-ID. CADASTR01.
      *================================================================*
       ENVIRONMENT                                         DIVISION.
       CONFIGURATION                       SECTION.
       INPUT-OUTPUT                        SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "CLIENTES.DAT"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS CODIGO
           ALTERNATE KEY IS NOME  WITH DUPLICATES
           FILE STATUS IS FS-CLIENTES.
      *================================================================*
       DATA                                                DIVISION.
       FILE                                SECTION.
       FD  CLIENTES.
       01  REGISTRO-CLIENTES.
           02 CODIGO PIC 9999.
           02 NOME   PIC X(50).
           02 DATA-NAS.
               03 DIA-NAS PIC 99.
               03 MES-NAS PIC 99.
               03 ANO-NAS PIC 9999.
                   02 TELEFONE PIC X(30).
                   02 ENDERECO PIC X(50).
                   02 NUMERO   PIC 9(6).
                   02 COMPLEMENTO PIC X(30).
                   02 BAIRRO      PIC X(30).
                   02 CIDADE      PIC X(30).
                   02 CEP         PIC X(8).
                   02 ESTADO      PIC AA.
                   02 EMAIL       PIC X(50).
       01  REG-CLIENTE.
           02 WCODIGO PIC 9999 VALUES ZERO.
           02 WNOME   PIC X(50) VALUES SPACES.
           02 WDATA-NAS.
               03 WDIA-NAS PIC 99 VALUE ZERO.
               03 WMES-NAS PIC 99 VALUE ZERO.
               03 WANO-NAS PIC 9999 VALUE ZERO.
           02 WTELEFONE PIC X(30) VALUE SPACES.
           02 WENDERECO PIC X(50) VALUE SPACES.
           02 WNUMERO PIC 9(6) VALUE ZERO.
           02 WCOMPLEMENTO PIC X(30) VALUE SPACES.
           02 WBAIRRO PIC X(30) VALUE SPACES.
           02 WCIDADE PIC X(30) VALUE SPACES.
           02 WCEP    PIC X(8)  VALUE SPACES.
           02 WESTADO PIC  AA VALUE SPACES.
           02 WEMAIL PIC X(50) VALUE SPACES.

      *================================================================*
       WORKING-STORAGE                     SECTION.
       01  FS-CLIENTES.
           02 FS-CLIENTES-1 PIC 9.
           02 FS-CLIENTES-2 PIC 9.
           02 FS-CLIENTE-R REDEFINES FS-CLIENTES-2 PIC 99 COMP-X.
       77  OPCAO PIC X VALUE SPACES.

      *================================================================*
       PROCEDURE                                           DIVISION.
           ABERTURA.
           OPEN I-O CLIENTES.
           INICIO.
                   DISPLAY SPACE ERASE EOS
                   PERFORM TELA
                       IF OPCAO = "S" OR "s" THEN
                           PERFORM GRAVA-DADOS
                           PERFORM LIMPA-CAMPOS
                           GO TO INICIO
                       ELSE
                           GO TO INICIO
                       END-IF
           .
           TELA.
               DISPLAY "CADASTRO CLIENTES          " AT 0430
               DISPLAY "CODIGO                     " AT 0605
               DISPLAY "NOME                       " AT 0705
               DISPLAY "DATA NASCIMENTO            " AT 0805
               DISPLAY "ENDERECO                   " AT 0905
               DISPLAY "TELEFONE                   " AT 1005
               DISPLAY "NUMERO                     " AT 1105
               DISPLAY "COMPLEMENTO                " AT 1205
               DISPLAY "BAIRRO                     " AT 1305
               DISPLAY "CIDADE                     " AT 1405
               DISPLAY "C.E.P                      " AT 1505
               DISPLAY "ESTADO                     " AT 1605
               DISPLAY "EMAIL                      " AT 1705
               ACCEPT WCODIGO                        AT 0625
               IF WCODIGO = 9999 THEN
                   CLOSE CLIENTES
                   EXIT PROGRAM
               END-IF
               ACCEPT WNOME         AT 0725
               ACCEPT WDIA-NAS      AT 0825
               ACCEPT WMES-NAS      AT 0828
               ACCEPT WANO-NAS      AT 0831
               ACCEPT WENDERECO     AT 0925
               ACCEPT WTELEFONE     AT 1025
               ACCEPT WNUMERO       AT 1125
               ACCEPT WCOMPLEMENTO  AT 1225
               ACCEPT WBAIRRO       AT 1325
               ACCEPT WCIDADE       AT 1425
               ACCEPT WCEP          AT 1525
               ACCEPT WESTADO       AT 1625
               ACCEPT WEMAIL        AT 1725
               DISPLAY "DADOS CORRETOS [S-N][.]" AT 1905
               ACCEPT OPCAO AT 1927
               .
           LIMPA-CAMPOS.
               MOVE  SPACES TO REG-CLIENTE.
               GRAVA-DADOS.
               MOVE REG-CLIENTE TO REGISTRO-CLIENTES
           WRITE REGISTRO-CLIENTES.
