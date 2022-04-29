defmodule Fusca do
  @derive[Carro]

  @enforce_keys [:cor, :ano, :velocidade]

  defstruct cor: nil, ano: nil, velocidade: nil

  def new(cor \\ "Azul", ano \\ 1960, velocidade \\ 10) do
    %__MODULE__{
      cor: cor,
      ano: ano,
      velocidade: velocidade
    }
  end
end
