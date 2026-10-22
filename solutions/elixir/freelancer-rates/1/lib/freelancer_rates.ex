defmodule FreelancerRates do
  # Calcula o valor da diária (8 horas de trabalho)
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  # Aplica o desconto em porcentagem sobre o valor
  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount / 100.0))
  end

  # Calcula o valor mensal (22 dias) com desconto e arredonda para o teto inteiro
  def monthly_rate(hourly_rate, discount) do
    (daily_rate(hourly_rate) * 22)
    |> apply_discount(discount)
    |> ceil()
  end

  # Calcula quantos dias cabem no orçamento com o valor diário descontado
  def days_in_budget(budget, hourly_rate, discount) do
    daily_discounted = 
      hourly_rate
      |> daily_rate()
      |> apply_discount(discount)

    (budget / daily_discounted)
    |> Float.floor(1)
  end
end