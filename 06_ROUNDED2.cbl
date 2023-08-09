       IDENTIFICATION            DIVISION.
       PROGRAM-ID.               06_ROUNDED2.

       DATA                      DIVISION.
       WORKING-STORAGE           SECTION.
       77  A        PIC        S999V9    VALUE    333.3.
       77  B        PIC        S999V9    VALUE    555.5.
       77  X        PIC        -999.9.

       PROCEDURE                 DIVISION.
       SiJak-P.
           ADD    A        TO        B        ON SIZE ERROR
                                               DISPLAY 'ERROR!'.
           MOVE   B        TO        X.
           DISPLAY                   X.
           MOVE        333.3    TO   A.
           MOVE        955.5    TO   B.
           ADD    A B      GIVING    X        ON SIZE ERROR
                                               DISPLAY 'ERROR!'.
           DISPLAY                   X.
           STOP                      RUN. 