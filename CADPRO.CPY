********** Comentários ou Comandos iniciais
          move spaces to w-linha
          move "QJ 92" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg

          move spaces to w-linha
          move "F 101000Arial" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900002006920000100010" to w-texto-A
          move "Nome da Empresa" to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "F 100000Arial" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900698000680100100010" to w-texto-A
          move w-numrel to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "RH" to w-RH-A
          move "00018" to w-RH-B
          move w-RH to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "QL" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg

          move spaces to w-linha
          move "F 141000Times New Roman" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900002007641010100010" to w-texto-A
          move "Relatório com Cabeçalho Automático" to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "RH" to w-RH-A
          move "00050" to w-RH-B
          move w-RH to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "QL" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg

          move spaces to w-linha
          move "F 100000Arial" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "L 00990000000464000100000002" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900002004600000100010" to w-texto-A
          move "(%_sem_%), (%_dia_%) de (%_msn_%) de (%_ano_%) - (%_hor_
      -    "%):(%_min_%)"
                to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "L 00990046400304000100000002" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900466003000100100010" to w-texto-A
          move "Página (%_pag_%) de (%_pgs_%) " to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "RH" to w-RH-A
          move "00020" to w-RH-B
          move w-RH to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "QL" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg

          move spaces to w-linha
          move "F 101000Arial" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "L 00990000000064000100000001" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900002000600000010010" to w-texto-A
          move "Código" to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "L 00990006400600000100000001" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900066005960000100010" to w-texto-A
          move "Descrição" to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "L 00990066400104000100000001" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900666001000100100010" to w-texto-A
          move "Valor unitário" to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "RH" to w-RH-A
          move "00020" to w-RH-B
          move w-RH to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "FC" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg

          .
       imp-dados section.
          move spaces to w-linha
          move "F 100000Arial" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900002000600000100010" to w-texto-A
          move w-cod to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900066005960000100010" to w-texto-A
          move w-descr to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "T 009900666001000100100010" to w-texto-A
          move w-valor to w-texto-B
          move w-texto to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "RH" to w-RH-A
          move "00018" to w-RH-B
          move w-RH to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          move spaces to w-linha
          move "QL" to w-linha
          move function length(w-linha) to w-seq-size
          write seq-reg
          .
