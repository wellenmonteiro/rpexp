################# Exponencial por Partes  ###################

rpexp <- function(n, p1,p2) {
  #gerar n valores aleatórios
  u <- runif(n)
  x <- ifelse(u <= 0.5, rexp(n, rate = p1), rexp(n, rate = p2))
  return(x)
}

dados_EP <- rpexp(1000, p1 = 1, p2 = 0.5)
dados_EP

hist(dados_EP, main = " Dados MEP", xlab = "Valores observados", ylab = " Frequência", xlim = c(0, max(dados_EP)))
