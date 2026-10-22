defmodule HighSchoolSweetheart do
  # Limpa espaços em branco nas pontas e pega a primeira letra
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  # Reutiliza first_letter/1, transforma em maiúscula e concatena o ponto
  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  # Divide o nome completo no espaço e reutiliza initial/1 para cada parte
  def initials(full_name) do
    [first_name, last_name] = String.split(full_name)
    "#{initial(first_name)} #{initial(last_name)}"
  end

  # Reutiliza initials/1 para os dois nomes e os injeta na caixa solicitada
  def pair(full_name1, full_name2) do
    i1 = initials(full_name1)
    i2 = initials(full_name2)

    """
    ❤-------------------❤
    |  #{i1}  +  #{i2}  |
    ❤-------------------❤
    """
  end
end