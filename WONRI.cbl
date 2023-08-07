           **************************************
           identification  division.
           program-id. WONRI.
           author. YONEE.
           remarks. 원리합계.
           **************************************
           environment division.
           configuration section.
           special-names
               currency sign is 'w'.
           **************************************
           data division.
           working-storage section.
           77  I         PIC     99    VALUE   1. 
           77  WonGeum   PIC     9(5)  VALUE   1. 
           77  Ija       PIC     9(4)  VALUE   10000. 
           77  Hab       PIC     WWW.WWW.
           **************************************
           procedure division.
           SiJak-P
               display "========================="
               display "원금     이자      합계"
               perform  GyeSan-P 5 Times.
               go to Keut-P.

           GyeSan-P
               compute Ija = WonGeum * 0.1.
               compute Hab = WonGeum + Ija.
               display WonGeum '   ' Ija  '    ' Hab.
               add 10000 to WonGeum.
           
           Keut-P
               display "========================="
               display "   "
               display "실행 끝"
               stop run. 
               

           