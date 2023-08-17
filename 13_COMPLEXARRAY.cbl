       IDENTIFICATION DIVISION.
       PROGRAM-ID. 13_COMPLEXARRAY.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 BaeYul.
               03 AA OCCURS 3.
                   04 A PIC 99 OCCURS 2.
               03 BB OCCURS 3.
                   04 B PIC XXX OCCURS 2.
           77 I PIC 9.   *> 반복문을 위한 인덱스 변수
           77 J PIC 9.
       
       PROCEDURE DIVISION.
       SiJak.
           PERFORM SooRok VARYING I FROM 1 BY 1 UNTIL I > 3
                            AFTER J FROM 1 BY 1 UNTIL J > 2.
           MOVE 'ABCDEF' TO BB(1).    *> BB 배열의 첫 번째 요소에 값 할당
           MOVE 'abcdef' TO BB(2).    *> BB 배열의 두 번째 요소에 값 할당
           MOVE 'UVWXYZ' TO BB(3).    *> BB 배열의 세 번째 요소에 값 할당
       
           PERFORM PyoSi VARYING I FROM 1 BY 1 UNTIL I > 3.
           PERFORM Keut.
       
       SooRok.
           MULTIPLY I BY J GIVING A(I, J).    *> A 배열 요소에 값 할당
       
       PyoSi.
           DISPLAY A(I, 1) ' ' A(I, 2) ' ' B(I, 1) ' ' B(I, 2).    *> A와 B 배열의 일부 요소 출력
       
       Keut.
           DISPLAY '  '.    *> 빈 줄 출력
           DISPLAY 'BaeYul : ' BaeYul.    *> BaeYul 변수 값 출력
           STOP RUN.
       