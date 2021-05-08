       IDENTIFICATION                                  DIVISION.
       PROGRAM-ID. TABELA01.

       DATA                                            DIVISION.
       WORKING-STORAGE                 SECTION.
       77  INDEXTAB        PIC 9(002)  VALUE ZEROS.
       77  TABMES          PIC 9(001)  VALUE ZEROS OCCURS 31 TIMES.
       01  DATASISTEMA.
           10 ANOSISTEMA   PIC 9(004).
           10 MESSISTEMA   PIC 9(002).
           10 DIASISTEMA   PIC 9(002).
       77  INTEIRODATA     PIC 9(008) VALUE ZEROS.
       77  DIAMES          PIC 9(002) VALUE ZEROS.
       77  DIASSEMANA      PIC 9(001) VALUE ZEROS.
       77  ANOBISSEXTO     PIC 9(004) VALUE ZEROS.
       77  ANOBISSPROVA    PIC 9(009) VALUE ZEROS.


       PROCEDURE                                       DIVISION.
           ACCEPT DATASISTEMA FROM DATE YYYYMMDD

           EVALUATE MESSISTEMA
           WHEN 1
           MOVE 31 TO DIAMES

           WHEN 2
           MOVE 28 TO DIAMES
           MOVE ZEROS TO ANOBISSEXTO
           DIVIDE ANOBISSEXTO BY 4 GIVING ANOBISSEXTO
           MOVE ANOBISSEXTO TO ANOBISSPROVA

           SUBTRACT ANOBISSPROVA FROM ANOBISSEXTO
           IF ANOBISSEXTO EQUAL ZEROS
               MOVE 29 TO DIAMES
           END-IF

           WHEN 3
           MOVE  31 TO DIAMES

           WHEN 4
           MOVE 30 TO DIAMES

           WHEN 5
           MOVE 31 TO DIAMES

           WHEN 6
           MOVE 30 TO DIAMES

           WHEN 7
           MOVE 31 TO DIAMES

           WHEN 8
           MOVE 31 TO DIAMES

           WHEN 9
           MOVE 30 TO DIAMES

           WHEN 10
           MOVE 31 TO DIAMES

           WHEN 11
           MOVE 30 TO DIAMES

           WHEN 12
           MOVE 31 TO DIAMES
           END-EVALUATE

           PERFORM VARYING INDEXTAB FROM 1 BY 1 UNTIL INDEXTAB > DIAMES
           MOVE INDEXTAB TO DIAMES
           MOVE DIASISTEMA TO INTEIRODATA
           MOVE FUNCTION REM(FUNCTION INTEGER-OF-DATE(INTEIRODATA),7) TO
           DIASSEMANA

           IF DIASSEMANA >= 1 AND DIASSEMANA <= 5
               MOVE 1 TO TABMES(INDEXTAB)
           END-IF
           END-PERFORM


           STOP RUN
           .
