defmodule GuessingGame do
  # Assinatura com argumento padrão para cobrir a chamada com apenas 1 argumento
  def compare(secret_number, guess \\ :no_guess)

  # Cláusula para quando não há palpite
  def compare(_secret_number, :no_guess) do
    "Make a guess"
  end

  # Cláusula para palpite exato
  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
  end

  # Cláusula para palpite próximo (diferença absoluta de exatamente 1)
  def compare(secret_number, guess) when abs(secret_number - guess) == 1 do
    "So close"
  end

  # Cláusula para palpite muito alto
  def compare(secret_number, guess) when guess > secret_number do
    "Too high"
  end

  # Cláusula para palpite muito baixo
  def compare(secret_number, guess) when guess < secret_number do
    "Too low"
  end
end