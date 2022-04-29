defprotocol Carro do
  @fallback_to_any true

  def acelerar(carro)
  def freiar(carro)

  defdelegate tipo(carro), to: Carros.Any
  defdelegate scrip_vendas(carro), to: Carro.Any
end

defimpl Carro, for: Any do
  def acelerar(_), do: 5
  def freiar(_), do: 5

  def scrip_vendas(carro) do
    IO.puts("
      Esse carro é um veiculo  #{Concessionaria.tipo(carro)} sua cor é #{carro.cor()}
      Quando acelera ele vai de 0 #{Carro.acelerar(carro)}
      quando ele freia #{Carro.freiar(carro)}
   ")
  end

  def tipo(carro), do: carro.__struct__ |> Module.split() |> List.first() |> String.downcase()
end
