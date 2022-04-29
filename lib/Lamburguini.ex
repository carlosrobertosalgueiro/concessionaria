defmodule Lamburguini do
  @enforce_keys [:cor, :ano, :velocidade]

  defstruct cor: nil, ano: nil, velocidade: nil

  def new(cor \\ "amarela", ano \\ 2019, velocidade \\ 100) do
    %__MODULE__{
      cor: cor,
      ano: ano,
      velocidade: velocidade
    }
  end

  defimpl Carro, for: __MODULE__ do
    def acelerar(carro), do: carro.velocidade + 200
    def freiar(carro), do: carro.velocidade - 100
  end
end
