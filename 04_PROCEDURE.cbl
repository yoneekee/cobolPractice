           procedure           division.
           SiJak-P.    * ----- SiJak-P 프로시저 -----
               display "==========================="
               display "원금     이자      합계"
               display "==========================="
               PERFORM GyeSan-P 5 Times.
               go to   Keut-P.
           GyeSan-P.
                      COMPUTE Ija = WonGeum * 0.1       
                      COMPUTE Hab = WonGeum + Ija       
                      DISPLAY WonGeum "   " Ija "    " Hab  
                      ADD 10000 TO WonGeum.            
              
           Keut-P.
               DISPLAY "========================="
               DISPLAY "   "
               DISPLAY "실행 끝"
               STOP RUN.                   
           