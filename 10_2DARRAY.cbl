       IDENTIFICATION DIVISION.
       PROGRAM-ID. 10_2DARRAY.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  BaeYul.
           03  AA               OCCURS  3 TIMES.
               04  A   PIC 99   OCCURS  4.  *> 2차원 배열을 정의

       77  I           PIC 9.
       77  J           PIC 9.

       PROCEDURE DIVISION.
       SiJak.
           PERFORM SooRok.  *> SooRok 프로시저 호출 (2차원 배열 초기화)
           PERFORM AA-Pyosi    VARYING I FROM 1 BY 1 UNTIL I > 3.  *> AA 배열 출력
           PERFORM Keut.  *> Keut 프로시저 호출 (최종 출력)
       
       SooRok.
           MOVE 1 TO I  *> 첫 번째 행으로 초기화
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
               MOVE 1 TO J  *> 첫 번째 열로 초기화
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > 4
                   MULTIPLY I BY J GIVING A(I, J)  *> 각 요소에 I와 J를 곱하여 할당
               END-PERFORM
           END-PERFORM.
       
       AA-Pyosi.
           DISPLAY ' '.
           DISPLAY 'AA (' I ') : ' AA(I).  *> AA 배열 출력
           PERFORM A-Pyosi VARYING J FROM 1 BY 1 UNTIL J > 4.  *> A 배열 출력
       
       A-Pyosi.
           DISPLAY 'A (' I ', ' J ') : ' A(I, J).  *> A 배열 출력

       Keut.
           MOVE 123 TO AA(1).  *> AA 배열의 첫 번째 요소에 값 할당
           DISPLAY '  '.
           DISPLAY 'BaeYul : ' BaeYul.  *> BaeYul 출력
           STOP RUN.  *> 프로그램 종료
