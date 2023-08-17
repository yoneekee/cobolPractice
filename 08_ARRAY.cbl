 IDENTIFICATION DIVISION.
       PROGRAM-ID. 08_ARRAY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01   BaeYul.
            03  A   PIC 99  OCCURS  5.
       01   I PIC 9 VALUE 1.

       PROCEDURE DIVISION.
       SiJak-P.
           MOVE    1234567890   TO  BaeYul
           DISPLAY 'Values after MOVE:'
           PERFORM DISPLAY-A-VALUES
           DISPLAY '-------------------'

           MOVE    12345   TO  BaeYul
           DISPLAY 'Values after another MOVE:'
           PERFORM DISPLAY-A-VALUES
           DISPLAY '-------------------'
       
           STOP RUN.

       DISPLAY-A-VALUES.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
              DISPLAY 'A(' I ') : ' A(I)
           END-PERFORM.