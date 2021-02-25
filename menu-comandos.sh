#cript name:  comandos-linux.sh
# Description:  teste de script com comandos aprendidos
# Written by :  Ana Shurman
# Data       :  11/01/2021 
#---------------------------------------------------------------#

#Bash version:

#---------------------------------------------------------------#
      echo "Digite o tempo de processamento"
      read TIME     
 
      clear
      while true;do
	echo " "
	echo " SEJA BEM VINDO "
	echo " "
	echo " Escolha uma opção abaixo para começar!
	
	1 - mudar de diretorio
	2 - mostrar arquivos e diretorios
	3 - ler arquivo 'ola mundo'
	4 - atualizar horario do arquivo 'ola mundo'
	5 - limpar a tela
	6- criar novo diretorio 
	7- voltar ao diretorio principal
	t- mostrar variavel time
	c-comparador de preços
	0- Sair do sistema"

        echo " "
        echo -n "Opção escolhida:"
        read opcao
        case $opcao in

        1)
            echo "digite o diretorio escolhido:"
	    read CD
	    echo mudando de diretório...
	    cd
	    ;;

        2)
            echo Mostrando arquivos e diretorios...
	    ls -ltr
              ;;
       
       3)
            echo lendo arquivo 'ola mundo'...
            cat 'ola mundo'
            ;;


        4)  echo atualizando horario do arquivo...
                touch 'ola mundo'
            ;;



        5)  echo limpando a tela...
            clear
            ;;
       
   
        6) 
	  
	   echo "Digite o nome do diretório"
	   read diretorio
	    mkdir $diretorio
	    ;; 


        7)
	    echo retornando ao diretorio principal...
	    cd\
            ;;


        t)
            echo mostrando variavel time...
            echo $TIME
	    echo Gostaria de mudar o tempo? 1-sim 2-nao
	    read resposta
	    if [ $resposta == "1" ]; then { 
	       echo Digite o tempo:
	       read TIME
	       echo $TIME   
               } 

            elif [ $resposta != "2" ]; then {  
                  echo eu falei 1 ou 2 
	      } else { 
	            echo mantendo o mesmo numero 
	            echo $TIME  
	    } fi
            ;;    
       

       r) 
	   echo deixe uma mensagem 
           read mensagem 
           if [ $mensagem n ]; then {
	   echo por favor digitar uma mensagem 
           } else {
 	     echo "sua mensagem é: " $mensagem   
            } fi ;;
	    

       c)   echo insira o nome do produto:
	    read produto
	    echo valor no vendedor 1:
	    read valor1
	    echo valor no vendedor 2:
	    read valor2
	     
	       if [ $valor1 -lt $valor2 ]; then {
	       echo o produto $produto esta mais barato no vendedor 1 
		} 
             
                elif [ $valor1 -gt $valor2 ]; then {
      	        echo o produto $produto esta mais barato no vendedor 2 
      	     	} else { 
    	        [ $valor1 -eq $valor2 ]; 
	        echo o valor do produto $produto é igual dos dois vendedores
	       } fi
                 ;; 
             

        0) exit 0
           ;;

        *)echo Opção inválida, tente novamente!
               ;;
          esac
          done	  
