defmodule PaintByNumber do
  # Usa recursão com argumento padrão (bits iniciando em 1) para encontrar a capacidade necessária
  def palette_bit_size(color_count, bits \\ 1) do
    if Integer.pow(2, bits) >= color_count do
      bits
    else
      palette_bit_size(color_count, bits + 1)
    end
  end

  # Retorna uma bitstring vazia
  def empty_picture() do
    <<>>
  end

  # Retorna a imagem de teste dividida em 4 segmentos de 2 bits cada
  def test_picture() do
    <<0::2, 1::2, 2::2, 3::2>>
  end

  # Calcula o tamanho do bit da paleta e insere o novo pixel no início da bitstring original
  def prepend_pixel(picture, color_count, pixel_color_index) do
    bits = palette_bit_size(color_count)
    <<pixel_color_index::size(bits), picture::bitstring>>
  end

  # Cláusula para imagens vazias retorna nil
  def get_first_pixel(<<>>, _color_count), do: nil

  # Desestrutura a bitstring para ler apenas o primeiro pixel, com base no tamanho calculado
  def get_first_pixel(picture, color_count) do
    bits = palette_bit_size(color_count)
    <<first_pixel::size(bits), _rest::bitstring>> = picture
    first_pixel
  end

  # Cláusula para imagens vazias retorna uma imagem vazia
  def drop_first_pixel(<<>>, _color_count), do: <<>>

  # Desestrutura a bitstring descartando o primeiro pixel e guardando apenas o resto
  def drop_first_pixel(picture, color_count) do
    bits = palette_bit_size(color_count)
    <<_first_pixel::size(bits), rest::bitstring>> = picture
    rest
  end

  # Concatena o conteúdo binário puro de ambas as imagens
  def concat_pictures(picture1, picture2) do
    <<picture1::bitstring, picture2::bitstring>>
  end
end