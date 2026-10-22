defmodule HighScore do
  @initial_score 0

  # Retorna um mapa novo e vazio
  def new() do
    %{}
  end

  # Adiciona um jogador, com pontuação padrão vinda do atributo de módulo
  def add_player(score_map, name, score \\ @initial_score) do
    Map.put(score_map, name, score)
  end

  # Remove o jogador do mapa de pontuações
  def remove_player(score_map, name) do
    Map.delete(score_map, name)
  end

  # Redefine a pontuação do jogador para o valor padrão (zero)
  def reset_score(score_map, name) do
    Map.put(score_map, name, @initial_score)
  end

  # Atualiza a pontuação somando à anterior (se não existir, o valor inicial é o próprio score passado)
  def update_score(score_map, name, score) do
    Map.update(score_map, name, score, fn existing_score -> existing_score + score end)
  end

  # Retorna a lista de jogadores extraindo apenas as chaves do mapa
  def get_players(score_map) do
    Map.keys(score_map)
  end
end