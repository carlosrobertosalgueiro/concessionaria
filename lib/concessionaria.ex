defmodule Concessionaria do
  alias Carro

  defdelegate tipo(carro), to: Carro.Any
  defdelegate script_vendas(carro), to: Carro.Any

  def cadasta(cor \\ "Branco", ano \\ 2000, velocidade \\ 10, modelo \\ Fusca) do
    modelo.__struct__(
      cor: cor,
      ano: ano,
      velocidade: velocidade
    )
  end

  def vender(carro), do: Concessionaria.script_vendas(carro)

  def vender_varios(carros) do
    Enum.map(carros, fn (carro) -> Concessionaria.script_vendas(carro) end)
  end
end
