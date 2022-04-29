defmodule Concessionaria do

  def cadasta(cor \\ "Branco", ano \\ 2000, velocidade \\ 10, modelo \\ Fusca) do
    modelo.__struct__(
      cor: cor,
      ano: ano,
      velocidade: velocidade
    )
  end

  def vender(carro), do: Concessionaria.scrip_vendas(carro)
end
