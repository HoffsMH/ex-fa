defmodule Fa do
  @moduledoc """
  Documentation for Fa
  """

  @doc """
      iex> label = "my_file"
      "my_file"
      iex> file_descriptor = "./mix.exs"
      "./mix.exs"
      iex> Fa.add_file(label, file_descriptor)
      %FaMap{files: []}
  """
  def add_file(label, file_descriptor),
    do: add_file(%FaMap{}, label, file_descriptor)

  @doc """
      iex> label = "my_file"
      "my_file"
      iex> file_descriptor = "./mix.exs"
      "./mix.exs"
      iex> fa_map = %FaMap{}
      iex> Fa.add_file(fa_map, label, file_descriptor)
      %FaMap{files: []}
  """
  def add_file(famap, label, file_descriptor) do
    famap
  end
end
