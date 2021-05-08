      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EQUAC001.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WKS-A PIC 9(02).
       77  WKS-B PIC 9(02).
       77  WKS-C PIC 9(02).
       77  WKS-DELTA PIC 9(02) VALUE ZEROES.
       77  WKS-EQU PIC 9(02) .


       PROCEDURE DIVISION.
           DISPLAY "DIGITE VALOR PARA A:"
           ACCEPT WKS-A
           DISPLAY "DIGITE VALOR PARA B:"
           ACCEPT WKS-B
           DISPLAY "DIGITE VALOR PARA C:"
           ACCEPT WKS-C
           COMPUTE WKS-DELTA = (WKS-B)**2 - (4 * WKS-A * WKS-C)
           DISPLAY "DELTA: " WKS-DELTA
           STOP RUN.
