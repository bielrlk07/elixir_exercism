defmodule Username do
  # Caso base: se a lista estiver vazia, encerra a recursão retornando vazio
  def sanitize([]), do: []

  # Substitui os caracteres alemães adicionando seus equivalentes ASCII à lista
  def sanitize([?ä | tail]), do: ~c"ae" ++ sanitize(tail)
  def sanitize([?ö | tail]), do: ~c"oe" ++ sanitize(tail)
  def sanitize([?ü | tail]), do: ~c"ue" ++ sanitize(tail)
  def sanitize([?ß | tail]), do: ~c"ss" ++ sanitize(tail)

  # Mantém as letras minúsculas usando um guard para validar a faixa permitida
  def sanitize([char | tail]) when char >= ?a and char <= ?z do
    [char | sanitize(tail)]
  end

  # Mantém o caractere underscore (_)
  def sanitize([?_ | tail]) do
    [?_ | sanitize(tail)]
  end

  # Descarta qualquer outro caractere (o curinga _char ignora o valor)
  def sanitize([_char | tail]) do
    sanitize(tail)
  end
end