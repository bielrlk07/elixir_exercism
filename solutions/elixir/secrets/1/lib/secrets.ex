defmodule Secrets do
  # Retorna uma função anônima que soma o segredo
  def secret_add(secret) do
    fn valor -> valor + secret end
  end

  # Retorna uma função anônima que subtrai o segredo
  def secret_subtract(secret) do
    fn valor -> valor - secret end
  end

  # Retorna uma função anônima que multiplica pelo segredo
  def secret_multiply(secret) do
    fn valor -> valor * secret end
  end

  # Retorna uma função anônima que usa divisão inteira (div/2)
  def secret_divide(secret) do
    fn valor -> div(valor, secret) end
  end

  # Retorna uma função anônima para operação AND bit a bit
  def secret_and(secret) do
    fn valor -> Bitwise.band(valor, secret) end
  end

  # Retorna uma função anônima para operação XOR bit a bit
  def secret_xor(secret) do
    fn valor -> Bitwise.bxor(valor, secret) end
  end

  # Combina as duas funções repassando o resultado da primeira para a segunda
  def secret_combine(secret_function1, secret_function2) do
    fn valor ->
      valor
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end