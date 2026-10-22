defmodule LanguageList do
  # Retorna uma lista vazia
  def new() do
    []
  end

  # Adiciona a nova linguagem no início da lista usando o operador cons (|)
  def add(list, language) do
    [language | list]
  end

  # Remove o primeiro item usando pattern matching para retornar apenas a cauda
  def remove([_head | tail]) do
    tail
  end

  # Retorna o primeiro item usando pattern matching para extrair a cabeça
  def first([head | _tail]) do
    head
  end

  # Conta o número de elementos da lista
  def count(list) do
    length(list)
  end

  # Verifica se "Elixir" está presente na lista
  def functional_list?(list) do
    "Elixir" in list
  end
end