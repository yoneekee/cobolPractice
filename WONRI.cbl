              IDENTIFICATION DIVISION.
              PROGRAM-ID. WONRI.                       *> 프로그램 식별 부분
              AUTHOR. YONEE.                            *> 프로그램 작성자 정보
              REMARKS. 원리합계.                         *> 비고 정보
              
              ENVIRONMENT DIVISION.
              CONFIGURATION SECTION.
              SPECIAL-NAMES.
                  CURRENCY SIGN IS 'w'.                *> 환경 설정 부분
              
              DATA DIVISION.
              WORKING-STORAGE SECTION.
              77  I         PIC 99     VALUE 1.        *> 카운터 변수 I (초기값 1)
              77  WonGeum   PIC 9(5)   VALUE 10000.    *> 원금 변수 WonGeum (초기값 10000)
              77  Ija       PIC 9(4)V9 .                *> 이자 변수 Ija (소수점 형식)
              77  Hab       PIC 9(5)V9.                 *> 합계 변수 Hab
              
              PROCEDURE DIVISION.
                  SiJak-P.
                      DISPLAY "========================="
                      DISPLAY "원금     이자      합계"
                      PERFORM GyeSan-P 5 TIMES         *> GyeSan-P 프로시저를 5번 반복 실행
                      GO TO Keut-P.
              
                  GyeSan-P.
                      COMPUTE Ija = WonGeum * 0.1       *> 이자 계산: 원금 * 0.1
                      COMPUTE Hab = WonGeum + Ija       *> 합계 계산: 원금 + 이자
                      DISPLAY WonGeum "   " Ija "    " Hab  *> 원금, 이자, 합계를 출력
                      ADD 10000 TO WonGeum.            *> 원금에 10000을 추가
              
                  Keut-P.
                      DISPLAY "========================="
                      DISPLAY "   "
                      DISPLAY "실행 끝"
                      STOP RUN.                          *> 프로그램 실행 종료