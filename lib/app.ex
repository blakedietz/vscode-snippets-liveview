defmodule App do
  def main(args \\ []) do
    snippet_directory = Path.absname("lib/priv/snippets", File.cwd!())
    {:ok, paths} = File.ls(snippet_directory)

    snippet_json =
      paths
      |> Enum.map(fn path ->
        snippet = File.read!(Path.absname(path, snippet_directory)) |> String.split("\n")

        App.Snippets.generate(path)
        |> Map.put(:body, snippet)
      end)
      |> Map.new(fn %{name: name} = meta_data -> {name, Map.delete(meta_data, :name)} end)
      |> Jason.encode!()

    File.write!("./snippets.json", snippet_json)

    args
    |> parse_args()
    |> response()
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [])

    {opts, List.to_string(word)}
  end

  defp response({opts, word}) do
    if opts[:upcase], do: String.upcase(word), else: word
  end
end
