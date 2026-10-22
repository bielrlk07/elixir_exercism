defmodule BirdCount do
  # Extrai o primeiro elemento (hoje); retorna nil se a lista for vazia
  def today([]), do: nil
  def today([today | _rest]) do
    today
  end

  # Incrementa o primeiro dia e reconstrói a lista; retorna [1] se vazia
  def increment_day_count([]), do: [1]
  def increment_day_count([today | rest]) do
    [today + 1 | rest]
  end

  # Retorna true se houver o elemento 0 na lista
  def has_day_without_birds?(list) do
    0 in list
  end

  # Utiliza Enum.sum para somar todos os elementos da lista
  def total(list) do
    Enum.sum(list)
  end

  # Utiliza Enum.count com uma função anônima (closure) para contar dias com >= 5
  def busy_days(list) do
    Enum.count(list, fn count -> count >= 5 end)
  end
end
