defmodule App do
  require Logger

  def main(args \\ []) do
    {build_arguments, _, _} =
      args
      |> OptionParser.parse(strict: [build: :keep])

    build(build_arguments)
  end

  defp build([]) do
    nil
  end

  defp build([flag | rest]) do
    build(flag)
    build(rest)
  end

  defp build({:build, "documentation"}) do
    Logger.info("Building documentation")

    snippet_directory = Path.absname("lib/priv/snippets", File.cwd!())
    {:ok, paths} = File.ls(snippet_directory)

    documentation = App.Documentation.create_documentation(paths, snippet_directory)

    File.write("./README.md", documentation)
  end

  defp build({:build, "vscode"}) do
    Logger.info("Building vscode snippets")

    snippet_directory = Path.absname("lib/priv/snippets", File.cwd!())
    {:ok, paths} = File.ls(snippet_directory)

    snippets = App.Snippets.create_vscode_snippets(paths, snippet_directory)

    elixir_snippet_json =
      snippets
      |> Enum.filter(&(&1.scope == "elixir"))
      |> Map.new(fn %{name: name} = meta_data -> {name, Map.delete(meta_data, :name)} end)
      |> Jason.encode!()

    phoenix_heex_snippet_json =
      snippets
      |> Enum.filter(&(&1.scope == "phoenix-heex"))
      |> Map.new(fn %{name: name} = meta_data -> {name, Map.delete(meta_data, :name)} end)
      |> Jason.encode!()

    package_json = File.read!("./package.json") |> Jason.decode!()
    vscode_package_json = Jason.encode!(package_json)

    File.mkdir_p!(Path.dirname("./build/vscode/"))
    File.write!("./build/vscode/elixir.code-snippets", elixir_snippet_json)
    File.write!("./build/vscode/phoenix-heex.code-snippets", phoenix_heex_snippet_json)
    File.write!("./build/vscode/package.json", vscode_package_json)
  end

  defp build({:build, "neovim"}) do
    Logger.info("Building neovim snippets")

    snippet_directory = Path.absname("lib/priv/snippets", File.cwd!())
    {:ok, paths} = File.ls(snippet_directory)

    snippets = App.Snippets.create_vscode_snippets(paths, snippet_directory)

    elixir_snippet_json =
      snippets
      |> Enum.filter(&(&1.scope == "elixir"))
      |> Map.new(fn %{name: name} = meta_data -> {name, Map.delete(meta_data, :name)} end)
      |> Jason.encode!()

    phoenix_heex_snippet_json =
      snippets
      |> Enum.filter(&(&1.scope == "phoenix-heex"))
      |> Map.new(fn %{name: name} = meta_data -> {name, Map.delete(meta_data, :name)} end)
      |> Jason.encode!()

    package_json = File.read!("./package.json") |> Jason.decode!()

    %{"contributes" => %{"snippets" => neovim_snippets}} = package_json

    neovim_snippets =
      neovim_snippets ++ [%{"language" => "elixir", "path" => "./phoenix-heex.code-snippets"}]

    neovim_package_json =
      update_in(package_json, ["contributes", "snippets"], fn _ -> neovim_snippets end)
      |> Jason.encode!()

    File.mkdir_p!(Path.dirname("./build/neovim/"))
    File.write!("./build/neovim/elixir.code-snippets", elixir_snippet_json)
    File.write!("./build/neovim/phoenix-heex.code-snippets", phoenix_heex_snippet_json)
    File.write!("./build/neovim/package.json", neovim_package_json)
  end
end
