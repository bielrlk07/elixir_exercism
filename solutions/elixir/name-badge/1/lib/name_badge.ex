defmodule NameBadge do
  def print(id, name, department) do
    # Define o departamento formatado ou "OWNER" se for nil
    formatted_dept = if department, do: String.upcase(department), else: "OWNER"

    # Retorna a string interpolada com ou sem o prefixo do ID
    if id do
      "[#{id}] - #{name} - #{formatted_dept}"
    else
      "#{name} - #{formatted_dept}"
    end
  end
end