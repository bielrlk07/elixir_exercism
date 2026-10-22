defmodule DNA do
  def encode_nucleotide(?\s), do: 0b0000
  def encode_nucleotide(?A),  do: 0b0001
  def encode_nucleotide(?C),  do: 0b0010
  def encode_nucleotide(?G),  do: 0b0100
  def encode_nucleotide(?T),  do: 0b1000

  def decode_nucleotide(0b0000), do: ?\s
  def decode_nucleotide(0b0001), do: ?A
  def decode_nucleotide(0b0010), do: ?C
  def decode_nucleotide(0b0100), do: ?G
  def decode_nucleotide(0b1000), do: ?T

  # Função pública inicializa o acumulador com uma bitstring vazia
  def encode(dna), do: do_encode(dna, <<>>)

  # Cláusula base: retorna o acumulador quando a lista termina
  defp do_encode([], acc), do: acc

  # Recursão de cauda: a construção da bitstring viaja junto no acumulador
  defp do_encode([nuc | tail], acc) do
    do_encode(tail, <<acc::bitstring, encode_nucleotide(nuc)::4>>)
  end

  # Função pública inicializa o acumulador com uma lista vazia
  def decode(dna), do: do_decode(dna, [])

  # Cláusula base: inverte o acumulador gerado para restaurar a ordem original
  defp do_decode(<<>>, acc), do: Enum.reverse(acc)

  # Recursão de cauda: extrai 4 bits, decodifica e adiciona à frente do acumulador
  defp do_decode(<<nuc::4, rest::bitstring>>, acc) do
    do_decode(rest, [decode_nucleotide(nuc) | acc])
  end
end