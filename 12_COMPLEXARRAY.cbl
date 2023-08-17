       IDENTIFICATION DIVISION.
       PROGRAM-ID. 12_COMPLEXARRAY.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 BaeYul.
               03          AA              OCCURS  3.
                   04      A      PIC 99   OCCURS  2.

       PROCEDURE DIVISION.
           DISPLAY BaeYul.
           STOP RUN.