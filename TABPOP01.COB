      ******************************************************************
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. TABPOP01.
      *================================================================*
       ENVIRONMENT                                         DIVISION.
       CONFIGURATION                           SECTION.

       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *================================================================*
       DATA                                                DIVISION.
       FILE                                    SECTION.
       WORKING-STORAGE                         SECTION.
       77  CTL-INICIO PIC X(026) VALUE "WSS COMECA AQUI".
       77  CTL-PROG   PIC X(019) VALUE "TABPOPO1".
       77  CTL-VERS   PIC X(007) VALUE "VERS001".
       77  CTL-FIM    PIC X(032) VALUE "WSS TERMINA AQUI".

       LOCAL-STORAGE                           SECTION.
      *                  QTD ALUNOS
       77  GDA-QT-ALU PIC 9(004).
      *                  INDEX PARA O LOOP DA TAB
       77  NDX        PIC 9(001)  VALUE ZEROS.

      *                  TABELA PARA ARMAZENAR OS DADOS DOS ALUNOS

      *                  TABELA: MATRICULA - NOME - IDADE
       01  TABELA-ALUNO.
           03 TAB-ALU OCCURS 0 TO 5 TIMES
                      DEPENDING ON GDA-QT-ALU.
                      05 TAB-ALU-MTC PIC 9(009).
                      05 TAB-ALU-NM  PIC X(050).
                      05 TAB-ALU-IDO PIC 9(003).
       01  CTL-FINAL-SS PIC X(40) VALUE "STORAGE SECTION TERMINA AQUI".




      *================================================================*
       PROCEDURE                                           DIVISION.
       000000-ROTINA-PRINCIPAL                   SECTION.
      *    MOVIMENTANDO A QTD DE ALUNOS  IRAO SER ARMAZENADOS
           MOVE 5 TO GDA-QT-ALU.

      *    LIMPA OS CAMPOS A SEREM PREENCHIDOS
           PERFORM 100000-LIMPA-TAB-ALU.

      *    POPULAR A TAB ALUNOS
           PERFORM 200000-CARREGA-TAB-ALU.
       000099-FIM.
           GOBACK.

       100000-LIMPA-TAB-ALU                      SECTION.
      *    LOOP PARA INICIALIZAR OS CAMPOS DA TAB

           PERFORM UNTIL NDX EQUAL GDA-QT-ALU
               ADD 1  TO NDX
               INITIALIZE       TAB-ALU-MTC (NDX)
                                TAB-ALU-NM  (NDX)
                                TAB-ALU-IDO (NDX)
           END-PERFORM.
       100099-FIM.
           EXIT.
       200000-CARREGA-TAB-ALU                     SECTION.
      *     MOVIMENTA OS DADOS PATA A TABELA-ALUNO
           MOVE 100001           TO TAB-ALU-MTC(1).
           MOVE 'FELIPE BARBOSA' TO TAB-ALU-NM(1).
           MOVE 23               TO TAB-ALU-IDO(1).

           MOVE 100002           TO TAB-ALU-MTC(2).
           MOVE 'DEANE DIAS    ' TO TAB-ALU-NM(2).
           MOVE 21               TO TAB-ALU-IDO(2).

           MOVE 100003           TO TAB-ALU-MTC(3).
           MOVE 'DANTE TORRES'   TO TAB-ALU-NM(3).
           MOVE 22               TO TAB-ALU-IDO(3).

           MOVE 100004           TO TAB-ALU-MTC(4).
           MOVE 'LARA MARTINS  ' TO TAB-ALU-NM(4).
           MOVE 21               TO TAB-ALU-IDO(4).

           MOVE 100005           TO TAB-ALU-MTC(5).
           MOVE 'JESSICA SILVA ' TO TAB-ALU-NM(5).
           MOVE 23               TO TAB-ALU-IDO(5).

       100099-FIM.
           EXIT.


       END PROGRAM TABPOP01.
