       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULAR-MEDIA.
       AUTHOR. BERGAMASCHI, MARCELO.
       DATE-WRITTEN. 05-03-1999.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  P1        PIC 99V9  VALUE ZEROS.
       77  P2        PIC 99V9  VALUE ZEROS.
       77  P3        PIC 99V9  VALUE ZEROS.
       77  P4        PIC 99V9  VALUE ZEROS.
       77  MEDIA     PIC 99V9  VALUE ZEROS.
       77  MASCARA   PIC Z9,9.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Digite a 1a nota: ".
           ACCEPT P1.
           DISPLAY "Digite a 2a nota: ".
           ACCEPT P2.
           DISPLAY "Digite a 3a nota: ".
           ACCEPT P3.
           DISPLAY "Digite a 4a nota: ".
           ACCEPT P4.

           COMPUTE MEDIA = (P1 + P2 + P3 + P4) / 4.
           MOVE MEDIA TO MASCARA.
           DISPLAY "A media e: " MASCARA.

           STOP RUN.
