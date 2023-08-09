       IDENTIFICATION                    DIVISION.
       PROGRAM-ID.                       06_ROUNDED1.
       
       DATA                              DIVISION.
       WORKING-STORAGE                   SECTION.
       77  A    PIC        S999V9    VALUE        345.6.
       77  B    PIC        S999      VALUE        111.
       77  X    PIC        -999. *> 편집형 기업장소

       PROCEDURE                         DIVISION.
       SiJak-P.
           ADD        A        TO        B. 
           MOVE       B        TO        X.
           DISPLAY    "X : ",  X.

           MOVE       345.6    TO        A.
           MOVE       111      TO        B.

           ADD        A        TO        B        ROUNDED.
           MOVE       B        TO        X.
           DISPLAY    "X : ",  X.
           STOP RUN.
