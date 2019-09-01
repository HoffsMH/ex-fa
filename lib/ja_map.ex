defmodule JaMap do
  defstruct files: []

  @file_module Application.get_env(:ja, File)
  @path_module Application.get_env(:ja, Path)


  @doc """
      iex> file_descriptor = "file"
      "file"
      iex> JaMap.gen_file_entry(file_descriptor)
      %JaMap{files: []}
  """

  def gen_file_entry(value) do
    x = @path_module
    with full_name <- @path_module.expand(value) do
      if @file_module.regular?(full_name) do
        %{
          type: :file,
          name: full_name,
          content: @file_module.read!(full_name)
        }
      else
        %{
          type: :dir,
          name: full_name,
          content: @file_module.ls!(full_name)
        }
      end
    end
  end
end
