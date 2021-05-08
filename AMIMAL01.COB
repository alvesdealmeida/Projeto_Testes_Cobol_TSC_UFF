       IDENTIFICATION                              DIVISION.
       PROGRAM-ID. ANIMAL01.
      *----------------------------------------------------------------*
       ENVIRONMENT                                 DIVISION.
       CONFIGURATION               SECTION.
       SPECIAL-NAMES.

       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.

      *----------------------------------------------------------------*
       DATA                                        DIVISION.
       FILE                        SECTION.

       WORKING-STORAGE             SECTION.
       01  SUBFILO.
           02 VERTEBRADO    PIC X(020) VALUE SPACES.
           02 INVERTEBRADO  PIC X(020) VALUE SPACES.
       02  CLASSE.
           03 MAMIFERO      PIC X(020) VALUE SPACES.
           03 AVE           PIC X(020) VALUE SPACES.
           03 INSETO        PIC X(020) VALUE SPACES.
           03 ANELIDEO      PIC X(020) VALUE SPACES.
       03  ORDEM.
           04 CARNIVORO     PIC X(020) VALUE SPACES.
           04 ONIVORO       PIC X(020) VALUE SPACES.
           04 HERBIVORO     PIC X(020) VALUE SPACES.
           04 HEMATOFAGO    PIC X(020) VALUE SPACES.

       PROCEDURE                                   DIVISION.

           DISPLAY "DIGITE SUBFILO: VERTEBRADO OU INVERTEBRADO"
           ACCEPT SUBFILO.

           DISPLAY "DIGITE CLASSE: MAMIFERO -AVE-INSETO - ANELIDEO:"
           ACCEPT CLASSE.

           DISPLAY "DIGITE ORDEM:CARNIVORO-ONIVORO-HERBIVORO-HEMATOFAGO"
           ACCEPT ORDEM.

           IF SUBFILO = VERTEBRADO AND CLASSE = MAMIFERO AND
               ORDEM = ONIVORO
               DISPLAY "HOMEM"

           IF SUBFILO = VERTEBRADO AND CLASSE = MAMIFERO AND
               ORDEM = HERBIVORO
               DISPLAY "VACA"


           IF SUBFILO = VERTEBRADO AND CLASSE = AVE AND
               ORDEM = ONIVORO
               DISPLAY "POMBA"

           IF SUBFILO = VERTEBRADO AND CLASSE = AVE AND
               ORDEM = CARNIVORO
               DISPLAY "AGUIA"

           IF SUBFILO = INVERTEBRADO  AND CLASSE = INSETO AND
               ORDEM = HEMATOFAGO
               DISPLAY "PULGA"

           IF SUBFILO = INVERTEBRADO AND CLASSE = INSETO AND
               ORDEM = HERBIVORO
               DISPLAY "LAGARTA"

           IF SUBFILO = INVERTEBRADO AND CLASSE = ANELIDEO AND
               ORDEM = HEMATOFAGO
               DISPLAY "SANGUESSUGA"
           IF SUBFILO = INVERTEBRADO AND CLASSE = ANELIDEO AND
               ORDEM = ONIVORO
               DISPLAY "MINHOCA"
           ELSE
               DISPLAY "CLASSIFICACAO ERRADA!"

           STOP RUN
           .
