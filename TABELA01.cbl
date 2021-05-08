      ******************************************************************
       IDENTIFICATION                                  DIVISION.
       PROGRAM-ID. TABELA01.
      *================================================================*
       ENVIRONMENT                                     DIVISION.
       CONFIGURATION                       SECTION.
       SPECIAL-NAMES.

       INPUT-OUTPUT                        SECTION.
       FILE-CONTROL.
      *================================================================*

       DATA                                            DIVISION.
       FILE                                SECTION.
       WORKING-STORAGE                     SECTION.
       77  INDEXTAB    PIC 9(002) VALUE ZEROS.
       77  TABMES      PIC 9(001) VALUE ZEROS.
       01  DATASISTEMA.
           10 ANOSISTEMA   PIC 9(004).
           10 MESISTEMA    PIC 9(002).
           10 DIASISTEMA   PIC 9(002).
       77  INTEIRODATA PIC 9(008) VALUE ZEROS.
       77  DIASMES     PIC 9(002) VALUE ZEROS.
       77  DIASEMANA   PIC 9(001) VALUE ZEROS.
       77  ANOBISSEXTO PIC 9(004) VALUE ZEROS.
       77  ANOBISSPROVA PIC 9(009) VALUE ZEROS.
      *================================================================*
       PROCEDURE DIVISION.
       INICIO.
      *     IDENTIFICA O MESISTEMA
           ACCEPT DATASISTEMA FROM DATE YYYYMMDD
      *     IDENTIFICA QUANTOS DIAS EXISTE NO MES
           EVALUATE MESISTEMA
           WHEN 1
           MOVE 31 TO DIASMES
           WHEN 2
           MOVE 28 TO DIASMES
           DIVIDE ANOSISTEMA BY 4 GIVING ANOBISSEXTO
           MOVE ANOBISSEXTO TO ANOBISSPROVA
           SUBTRACT ANOBISSPROVA FROM ANOBISSEXTO

           IF ANOBISSEXTO EQUAL ZEROS
               MOVE 29 TO DIASMES
           END-IF

           WHEN 3
           MOVE 31 TO DIASMES
           WHEN 4
           MOVE 30 TO DIASMES
           WHEN 5
           MOVE 31 TO DIASMES
           WHEN 6
           MOVE 30 TO DIASMES
           WHEN 7
           MOVE 31 TO DIASMES
           WHEN 8
           MOVE 31 TO DIASMES
           WHEN 9
           MOVE 30 TO DIASMES
           WHEN 10
           MOVE 31 TO DIASMES
           WHEN 11
           MOVE 30 TO DIASMES
           WHEN 12
           MOVE 31 TO DIASMES
           END-EVALUATE
      *    LACO PARA CADA DIA DO MES
           PERFORM VARYING INDEXTAB FROM 1 BY 1
           UNTIL INDEXTAB > DIASISTEMA

      *    DIA QUE SERA ANALISADO
           MOVE INDEXTAB TO DIASISTEMA

      *    FUNCAO NAO ACEITA UM ITEM DE GRUPO
           MOVE DATASISTEMA TO INTEIRODATA
      *    1 = SEFUNDA FEIRA
      *    2 = TERÇA FEIRA
      *    3 = QUARTA FEIRA
      *    4 = QUINTA FEIRA
      *    5 = SEXTA FEIRA
      *    6 = SABADO
      *    7 = DOMINGO
           MOVE FUNCTION REM (FUNCTION INTEGER-OF-DATE(INTEIRODATA),7)
           TO DIASISTEMA

           IF DIASEMANA >= 1 AND DIASEMANA <=5
               MOVE 1 TO TABMES
           END-IF
           END-PERFORM

      *    SE CONDICAO FOR VERDADEIRA E UM DIA UNTIL

           STOP RUN
           .
