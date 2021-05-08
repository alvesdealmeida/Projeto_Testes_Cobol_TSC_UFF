      ******************************************************************
       IDENTIFICATION                                      DIVISION.
       PROGRAM-ID. CWCAD3.
      *================================================================*
       ENVIRONMENT                                         DIVISION.
       CONFIGURATION                           SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT                            SECTION.
       FILE-CONTROL.
           SELECT FileName ASSIGN TO DISK ORGANISATION IS INDEXED
           ACCESS MODE IS DYNAMIC RECORD KEY IS FileName-CHAVE
           ALTERNATE RECORD KEY IS FileName-DESCRICAO WITH DUPLICATES
           LOCK MODE IS MANUAL
           FILE STATUS IS FS-FileName.

      *================================================================*
       DATA                                                DIVISION.
       FILE                                    SECTION.
       FD  FileName
           LABEL RECORD IS STANDARD
           VALUE OF FILE-ID IS LB-FileName.

       01  FileName-REG.
           05 FileName-CHAVE .
               10 FileName-CODIGO  PIC 9(005).
           05 FileName-DESCRICAO   PIC X(030).
           05 FileName-PRECO       PIC 9(008)V99.
           05 FileName-TIPO        PIC 9(001).
               88 FileName-PECA    VALUE 1.
               88 FileName-ACABADO VALUE 2.
               88 FileName-MATERIAL VALUE 3.
           05 FileName-OPCOES.
               10 FileName-IMPORTADO    PIC 9(001).
               10 FileName-GARANTIA     PIC 9(001).
               10 FileName-DURAVEL      PIC 9(001).
       WORKING-STORAGE                         SECTION.
       01  AREAS-DE-TRABALHO-1.
           05 REGISTROS   PIC 9(002) VALUE 0.
           05 FS-FileName  PIC X(002) VALUE "00".
           05 LB-FileName  PIC X(255) VALUE "FileName".

       LINKAGE                                 SECTION.
       01  USER-IO         PIC X(001).
           88 OPEN-FILE    VALUE "O" "o".
           88 CLOSE-FILE   VALUE "C" "c".
           88 BEGIN-FILE   VALUE "B" "b".
           88 END-FILE     VALUE "E" "e".
           88 AT-END       VALUE "*".
           88 READ-NEXT    VALUE "N" "n".
           88 READ-PREVIOUS VALUE "P" "p".
           88 NOT-LESS      VALUE ">".
           88 NOT-GREATER   VALUE "<".
           88 NOT-OPERATOR  VALUE "<".
           88 EDIT-KEY      VALUE "$".
       01  ORDER-MODE       PIC 9(001).
           88 ORDER-BY-LEFT VALUE 1.
           88 ORDER-BY-RIGHT VALUE 2.
       01  LEFT-ITEM.
           05 LIST-CODIGO PIC 9(005).
           05 FILLER      PIC X(075).
       01  RIGHT-ITEM.
           05 LIST-DESCRICAO    PIC X(030).
           05 FILLER            PIC X(075).
       01  HEIGHT               PIC X(002).
       01  WORK-AREA            PIC X(050).
       01  BOXFILESELECT-EDIT   PIC 9(003).COPY CWEDIT.
       01  BOXFILESELECT-OPTION PIC X(076).
      *================================================================*
       PROCEDURE DIVISION USING USER-IO ORDER-MODE
                                LEFT-ITEM
                                RIGHT-ITEM
                                HEIGHT
                                WORK-AREA
                                BOXFILESELECT-EDIT
                                BOXFILESELECT-OPTION.
       INICIO.
           EVALUATE TRUE
           WHEN EDIT-KEY
           CONTINUE *> tecla de funcao em BOXFILESELECT-EDIT
                    *> item posicionado em BOXFILESELECT-OPTION
                    WHEN OPEN-FILE
                         OPEN INPUT FileName
                         MOVE  0 TO REGISTROS
                         PERFORM TEST AFTER UNTIL FS-FileName > "09"
                                 OR REGISTROS  = HEIGHT
                                 READ FileName NEXT RECORD
                                          IGNORE LOCK
                                 IF FS-FileName < "10"
                                    ADD 1 TO REGISTROS
                                 END-IF
                         END-PERFORM
                         IF REGISTROS < HEIGHT
                             MOVE REGISTROS TO HEIGHT
                         END-IF
                   WHEN CLOSE-FILE
                         CLOSE FileName
                   WHEN BEGIN-FILE
                         INITIALIZE FileName-REG
                         EVALUATE TRUE
                             WHEN ORDER-BY-RIGHT
                                 START FileName KEY NOT <
                                 FileName-DESCRICAO
                             WHEN OTHER
                                 START FileName KEY NOT <
                                 FileName-CHAVE
                         END-EVALUATE
                   WHEN END-FILE
                          MOVE HIGH-VALUE TO FileName-REG
                          EVALUATE TRUE
                             WHEN ORDER-BY-RIGHT
                                 START FileName KEY NOT >
                                 FileName-DESCRICAO
                             WHEN OTHER
                                 START FileName KEY NOT >
                                 FileName-CHAVE
                          END-EVALUATE
                   WHEN READ-NEXT
                          READ FileName NEXT RECORD
                                        IGNORE  LOCK
                          IF FS-FileName > "09"
                              SET AT-END TO TRUE
                          END-IF
                   WHEN READ-PREVIOUS
                          READ FileName PREVIOUS RECORD
                                        IGNORE LOCK
                          IF FS-FileName > "09"
                              SET AT-END TO TRUE
                          END-IF
                   WHEN NOT-LESS
                          EVALUATE TRUE
                              WHEN ORDER-BY-RIGHT
                                  MOVE LIST-DESCRICAO TO
                                  FileName-DESCRICAO
                                  START FileName KEY NOT <
                                  FileName-DESCRICAO
                                  INVALID KEY
                                     SET AT-END TO TRUE
                                  END-START
                              WHEN OTHER
                                  MOVE LIST-CODIGO TO FileName-CODIGO
                                  START FileName KEY NOT <
                                  FileName-CHAVE
                                  INVALID KEY
                                     SET AT-END TO TRUE
                                  END-START
                          END-EVALUATE
                   WHEN NOT-GREATER
                          EVALUATE TRUE
                              WHEN ORDER-BY-RIGHT
                                 MOVE LIST-DESCRICAO TO
                                 FileName-DESCRICAO
                                 START FileName KEY NOT >
                                 FileName-DESCRICAO
                                 INVALID KEY
                                     SET AT-END TO TRUE
                                 END-START
                              WHEN OTHER
                                 MOVE LIST-CODIGO TO FileName-CODIGO
                                 START FileName KEY NOT >
                                 FileName-CHAVE
                                 INVALID KEY
                                      SET AT-END TO TRUE
                                 END-START
                         END-EVALUATE
           END-EVALUATE
           MOVE SPACES TO LEFT-ITEM
                          RIGHT-ITEM
           MOVE FileName-CODIGO TO LIST-CODIGO
           MOVE FileName-DESCRICAO TO LIST-DESCRICAO
           GOBACK.
       END PROGRAM CWCAD3.
