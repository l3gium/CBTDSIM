       Identification Division.
       Program-Id.              SALARIO-LIQUIDO.
       Author.                  LUIZATTO, MIGUEL | BORGES, BEATRIZ.
       Date-Written             20/08/2025
       Date-Compiled            
       Installation             IFSP CBT.
       Security                 PROGRAMA PARA CALCULAR A DEDUCAO
                                DO IMPOSTO DE RENDA
                                
       Environment DIVISION.
       Configuration Section.
       SOURCE-COMPUTER.         MEU PC.
       OBJECT-COMPUTER.         MEU PC.
       SPECIAL-NAMES.
           DECIMAL-POINT Is COMMA.
           
       Data Division.
       
       WORKING-STORAGE SECTION.
       77  QTD_HORA            PIC 9(03)      VALUE ZEROS.
       77  VAL_HORA            PIC 9(09)V99   VALUE ZEROS.
       77  SAL_BRUTO           PIC 9(09)V99   VALUE ZEROS.
       77  IRRF                PIC 9(09)V99   VALUE ZEROS.
       77  SAL_LIQUIDO         PIC 9(09)V99      VALUE ZEROS.
       77  MASCARA             PIC Z9,99.
       
       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "DIGITE O VALOR DA HORA (MENSAL): ".
           ACCEPT VAL_HORA.
           
           DISPLAY	"DIGITE O TOTAL EM HORAS TRABALHADO (MES): ".
           ACCEPT QTD_HORA.
           
           COMPUTE SAL_BRUTO = QTD_HORA * VAL_HORA * 5,25.
           DISPLAY SAL_BRUTO.
           MOVE SAL_BRUTO TO MASCARA
           
           IF (SAL_BRUTO <= 2112,00)
               DISPLAY "SALARIO LIQUIDO: ", MASCARA
               
           ELSE IF (SAL_BRUTO <= 2826,65)
               COMPUTE IRRF = SAL_BRUTO * 0,075 - 158,4
               COMPUTE SAL_LIQUIDO = SAL_BRUTO - IRRF
               
               DISPLAY "7.5%"
               
               MOVE SAL_LIQUIDO TO MASCARA
               DISPLAY "SALARIO LIQUIDO: ", SAL_LIQUIDO
               
           ELSE IF (SAL_BRUTO <= 3751,05)
               COMPUTE IRRF = SAL_BRUTO * 0,15 - 370,4
               COMPUTE SAL_LIQUIDO = SAL_BRUTO - IRRF
               
               DISPLAY "15%"
               MOVE SAL_LIQUIDO TO MASCARA
               DISPLAY "SALARIO LIQUIDO: ", SAL_LIQUIDO
               
           ELSE IF (SAL_BRUTO <= 4664,68)
               COMPUTE IRRF = SAL_BRUTO * 0,225 - 651,73
               COMPUTE SAL_LIQUIDO = SAL_BRUTO - IRRF
               
               DISPLAY "22.5%"
               MOVE SAL_LIQUIDO TO MASCARA
               DISPLAY "SALARIO LIQUIDO: ", SAL_LIQUIDO
           ELSE
               COMPUTE IRRF = SAL_BRUTO * 0,275 - 884,96
               COMPUTE SAL_LIQUIDO = SAL_BRUTO - IRRF
               
               DISPLAY "27.5%"
               MOVE SAL_LIQUIDO TO MASCARA
               DISPLAY "SALARIO LIQUIDO: ", SAL_LIQUIDO
           STOP RUN.
           
       END PROGRAM SALARIO-LIQUIDO.
