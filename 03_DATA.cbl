           data                    division.
           file                    section.
           F0      In-File.
           01      In-Record.
                   02 Irum     PIC     X(10).
                   02 GuGer    PIC     9(3).    
                   02 SanSu    PIC     9(3).
           * ---------------------------------------------------
           working-storage         section.
           77      X           pic     9(5).
           77      Y           pic     9(5).
           * ---------------------------------------------------
           linkage                 section.
           77      InJa1           pic     x(5).
           77      InJa2           pic     9(3).
           * ---------------------------------------------------
           report                  section.
           R0  Report-File.
               <레포트 파일에 대한 세부 사항을 기술>