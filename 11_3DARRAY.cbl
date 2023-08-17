IDENTIFICATION DIVISION.
PROGRAM-ID. 11_3DARRAY.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 BaeYul        PIC 9(20). *> 결과값을 저장할 변수
01 AAA.
    05 AA OCCURS 2.    *> 면
       10 A OCCURS 3.  *> 행
          15 X OCCURS 4 PIC 99.  *> 열

77 I               PIC 9.  *> 반복문을 위한 인덱스 변수
77 J               PIC 9.
77 K               PIC 9.

PROCEDURE DIVISION.
   SiJak.
       PERFORM SooRok VARYING I FROM 1 BY 1 UNTIL I > 2
                        AFTER J FROM 1 BY 1 UNTIL J > 3
                        AFTER K FROM 1 BY 1 UNTIL K > 4.
       PERFORM PyoSi VARYING I FROM 1 BY 1 UNTIL I > 2
                      AFTER J FROM 1 BY 1 UNTIL J > 3
                      AFTER K FROM 1 BY 1 UNTIL K > 4.
       PERFORM Keut.

   SooRok.
       COMPUTE X(I, J, K) = I * J * K.
       MOVE X(I, J, K) TO BaeYul. *> 요소 값을 BaeYul에 누적

   PyoSi.
       DISPLAY 'A (' I ', ' J ', ' K ') : ' X(I, J, K).

   Keut.
       STRING BaeYul DELIMITED BY SPACE INTO BaeYul
       DISPLAY ' *** SUMMING UP *** '
       DISPLAY 'BaeYul : ' BaeYul
       STOP RUN.
