       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ProdTable.
           02 ProdData.
               03 FILLER PIC X(8) VALUE "Red SML".
               03 FILLER PIC X(8) VALUE "Blue SML".
               03 FILLER PIC X(8) VALUE "Green SML".
           02 FILLER REDEFINES ProdData.
               03 Shirt OCCURS 3 TIMES.
                   04 ProdName PIC X(5).
                   04 ProdSizes PIC A OCCURS 3 TIMES.
       01 ChangeMe.
           02 TextNum PIC X(6).
           02 FloatNum REDEFINES TextNum PIC 9(4)V99.
       01 StrNum PIC X(7).
       01 SplitNum.
           02 WNum PIC 9(4) VALUE ZERO.
           02 FNum PIC 99 VALUE ZERO.
       01 FlNum REDEFINES SplitNum PIC 9999V99.
       01 DollarNum PIC $$,$$9.99.

       PROCEDURE DIVISION.
       DISPLAY Shirt(1).
       MOVE '123456' TO TextNum.
       DISPLAY FloatNum.
       DISPLAY "Enter a Float : " WITH NO ADVANCING
       ACCEPT StrNum
       UNSTRING StrNum
           DELIMITED BY "." OR ALL SPACES
           INTO WNum, FNum
       MOVE FlNum to DollarNum
       DISPLAY DollarNum.


       END PROGRAM coboltut.
