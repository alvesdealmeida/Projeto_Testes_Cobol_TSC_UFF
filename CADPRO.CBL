      $set ans85 noosvs mf
        environment division.
        configuration section.
        special-Names.
             decimal-point is comma.
        input-output section.
             select ARQ1
                    assign to disk
                    file status is w-seq-st.

             select seq-arq
                    assign to        disk
                    organization     line sequential
                    lock mode is     manual
                    status           w-seq-st.

        data division.
        file section.
        fd      ARQ1
                label record is standard
                value of file-id is w-nome-arq.
        01      REG1.
                03 fd-codigo         pic 9(04).
                03 fd-produto        pic x(30).
                03 fd-valunit        pic 9(6)v99.

        fd      seq-arq
                value of file-id w-seq-id
                record is varying in size depending on w-seq-size.
        01      seq-reg.
                02 w-linha           pic x(1200).

        working-storage section.

        01      w-nome-arq           pic x(20)     value spaces.

        01      VisRel.
                03 w-numrel          pic x(10)     value "Rel0001".
                03 w-cod             pic 9(4).
                03 w-descr           pic x(30).
                03 w-valor           pic zz.zz9,99.
                03 w-conta           pic 9(4)      value zeros.

        01      w-status.
                02 w-seq-id          pic x(20)     value spaces.
                02 w-seq-st          pic xx        value zeros.
                02 w-seq-size        pic 9(06)     value zeros.

        01      w-texto.
                02 w-texto-A         pic x(26)     value spaces.
                02 w-texto-B         pic x(1174)   value spaces.

        01      w-RH.
                02 w-RH-A            pic x(2)      value spaces.
                02 filler            pic x(1)      value spaces.
                02 w-RH-B            pic x(1197)   value spaces.

        77      FUNCAO-35            pic x comp-x  value 35.
        77      CODERRO-2            pic x comp-x  value 0.
        01      COMANDO              pic x(250)    value spaces.
        01      COMMAND-LIN.
                02 COMMAND-LIN-LEN   pic x comp-x  value 0.

        screen section.

        procedure division.

        Inicio.
******** Inicializar o arquivo com alguns registros ********
           move "CADPRO.DAT" to w-nome-arq
           open output ARQ1

           perform 500 times
              add 1 to w-conta
              move w-conta to fd-codigo
              string "Produto ", w-conta
                     delimited by size into fd-produto
              compute fd-valunit = 100 * w-conta
              write REG1
           end-perform

           close ARQ1

           perform inicio-visrel

           open input ARQ1.
           go to le-arquivo.
           .

        inicio-visrel.
           move "CADPRO.Rel" to w-seq-id
           open output seq-arq
           copy "cadpro.cpy".

        le-arquivo.
           read arq1 next at end go to fecha-arquivo.

           move fd-codigo  to w-cod.
           move fd-produto to w-descr.
           move fd-valunit to w-valor.

           perform imp-dados.
           go to le-arquivo.

        fecha-arquivo.
            close ARQ1.

        final-visrel.
            close seq-arq.

            STRING "C:\Windows\VisRel.exe ",
                   "/g ",
                   w-seq-id,
                   " /t Cadastro de Produtos"
                   DELIMITED BY SIZE INTO COMANDO.

            DISPLAY COMANDO UPON COMMAND-LINE.
            CALL X"91" USING CODERRO-2, FUNCAO-35, COMMAND-LIN.
            exit program.
            goback.
