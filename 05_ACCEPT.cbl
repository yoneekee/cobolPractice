       IDENTIFICATION DIVISION.
       PROGRAM-ID. P2-5.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CONSOLE IS TTY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NAMAE    PIC X(12).
       77 TOSHI    PIC 9(3).
      

       PROCEDURE DIVISION.
       SiJak-P.
           DISPLAY "이름, 나이.......?" UPON CONSOLE.
           ACCEPT NAMAE FROM TTY.
           ACCEPT TOSHI FROM TTY.
           DISPLAY " ".
           DISPLAY "name : ", NAMAE.
           DISPLAY "age : ", TOSHI.
           STOP RUN.
