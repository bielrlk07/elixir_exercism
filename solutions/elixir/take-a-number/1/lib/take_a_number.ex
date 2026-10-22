defmodule TakeANumber do
  # Inicia o processo chamando o laço recursivo com o estado inicial 0
  def start() do
    spawn(fn -> loop(0) end)
  end

  # Função privada que mantém o laço de recebimento e o estado
  defp loop(state) do
    receive do
      # Envia o estado atual e continua o laço com o mesmo estado
      {:report_state, sender_pid} ->
        send(sender_pid, state)
        loop(state)
      
      # Incrementa o estado, envia o novo número e atualiza o laço
      {:take_a_number, sender_pid} ->
        new_state = state + 1
        send(sender_pid, new_state)
        loop(new_state)
      
      # Encerra a execução (não chama o laço recursivo novamente)
      :stop ->
        nil
      
      # Ignora mensagens inesperadas e mantém o laço rodando
      _ ->
        loop(state)
    end
  end
end