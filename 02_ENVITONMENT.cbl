           environment         division.
           configuration       section.
           source-computer.    Computer-X.
           object-computer.    Computer-Y.
           special-names.  
               currency sign is 'W'.
           * ------------------------------
           input-output        section.
           file-control.
               select In-File assign to 'JaRyo.DAT'.
               select Out-File assgin to 'Bogoseo.DAT'.
           i-o-control.
               return every 100 records of In-File.