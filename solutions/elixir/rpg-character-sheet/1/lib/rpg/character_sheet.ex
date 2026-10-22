defmodule RPG.CharacterSheet do
  # 1. Imprime a mensagem de boas-vindas
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  # 2. Pergunta o nome e remove os espaços/quebras de linha
  def ask_name() do
    IO.gets("What is your character's name?\n")
    |> String.trim()
  end

  # 3. Pergunta a classe e remove os espaços/quebras de linha
  def ask_class() do
    IO.gets("What is your character's class?\n")
    |> String.trim()
  end

  # 4. Pergunta o nível, remove os espaços e converte para número inteiro
  def ask_level() do
    IO.gets("What is your character's level?\n")
    |> String.trim()
    |> String.to_integer()
  end

  # 5. Executa todo o fluxo, constrói o mapa e o imprime com o rótulo
  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()

    # Cria o mapa do personagem
    character = %{class: class, level: level, name: name}

    # IO.inspect imprime o rótulo junto com o mapa e retorna o próprio mapa
    IO.inspect(character, label: "Your character")
  end
end
