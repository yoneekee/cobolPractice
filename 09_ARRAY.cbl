       IDENTIFICATION DIVISION.
       PROGRAM-ID. 09_ARRAY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BaeYul.
           03  A   PIC   99    OCCURS  5.
       77  I   PIC     99.
       77  Hab PIC     999     VALUE   0.

       PROCEDURE DIVISION.
       SiJak-P.
           MOVE 1 TO A(1)
           MOVE 2 TO A(2)
           MOVE 3 TO A(3)
           MOVE 4 TO A(4)
           MOVE 5 TO A(5)
           
           DISPLAY "양의 정수 5개.....?"
           PERFORM ChulRyuk VARYING I   FROM 5  BY  -1   UNTIL   I < 1.
           DISPLAY '합계 : ' Hab.
           STOP RUN.

       ChulRyuk.
           DISPLAY A(I).
           ADD A(I) TO Hab.
