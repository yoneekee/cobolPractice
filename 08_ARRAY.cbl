       IDENTIFICATION DIVISION.
       PROGRAM-ID. 08_ARRAY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01   BaeYul.
            03  A   PIC 99  OCCURS  5.
       01   I PIC 9 VALUE 1.

       *******************************************
       PROCEDURE DIVISION.
       SiJak-P.
           MOVE    1234567890  TO  BaeYul.
           DISPLAY     A(1).
           DISPLAY     A(2).
           DISPLAY     A(3).
           DISPLAY     A(4).
           DISPLAY     A(5).
           DISPLAY     BaeYul.
           DISPLAY     '   '.
       
           MOVE    12345   TO  BaeYul.  
           DISPLAY     A(1).
           DISPLAY     A(2).
           DISPLAY     A(3).
           DISPLAY     A(4).
           DISPLAY     A(5).
           DISPLAY     BaeYul.
           DISPLAY     ':'
           
           STOP RUN.