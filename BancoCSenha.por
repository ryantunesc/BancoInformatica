programa {
  funcao inicio() {
    real saldo = 0
    real saque, deposito
    cadeia controle
    inteiro menu = 1
    cadeia extrato = ""
    cadeia senha = "senhadopedro"
    cadeia password

    escreva("Digite a senha para acessar o menu:")
    leia(password)
    enquanto(password != senha){
    		escreva("Senha Invalida, Tente Novamente: ")
    			leia(password)
    }
    	enquanto(menu != 0){
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO  R$", saldo, "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        caso 2:
         escreva("Digite sua senha: ")
         leia(password)
         se(password == senha){
         	escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
        se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
         }
        pare
        caso 3:
        escreva("Digite sua senha: ")
         leia(password)
         se(password == senha)
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 4:
        escreva("Digite sua senha: ")
         leia(password)
         se(password == senha){
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
      }
    }
  }
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */