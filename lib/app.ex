defmodule App do
  def main(args \\ []) do
    snippet_directory = Path.absname("lib/priv/snippets", File.cwd!())
    {:ok, paths} = File.ls(snippet_directory)

    snippet_json =
      paths
      |> Enum.map(fn path ->
        file = File.read!(Path.absname(path, snippet_directory))
        snippet = file |> String.split("\n")

        snippet_data =
          App.Snippets.generate(path)
          |> Map.put(:body, snippet)

        snippet_data
        |> Map.put(:description, "prefixes: #{snippet_data.prefix |> Enum.join(",")}")
      end)
      |> Map.new(fn %{name: name} = meta_data -> {name, Map.delete(meta_data, :name)} end)
      |> Jason.encode!()

    doc_table =
      paths
      |> Enum.map(fn path ->
        snippet = File.read!(Path.absname(path, snippet_directory)) |> String.split("\n")

        App.Snippets.generate(path)
        |> Map.put(:body, snippet)
      end)
      |> Enum.sort_by(& &1.name)
      |> Enum.map_join("", &to_table_line/1)

    snippet_examples =
      paths
      |> Enum.map(fn path ->
        snippet = File.read!(Path.absname(path, snippet_directory))

        App.Snippets.generate(path)
        |> Map.put(:body, snippet)
      end)
      |> Enum.sort_by(& &1.name)
      |> Enum.map_join("", &to_snippet_documentation/1)

    docs = """
    # Phoenix LiveView snippets

    ## Description

    A well documented set of snippets commonly used when writing LiveView code. The snippets touch on all aspects of development when writing LiveView
    code. Here's a high level list

    - Ecto
      - schema
    - Embedded elixir aka eex
    - LiveView
      - Lifecycle functions such as handle_event, render, preload, mount
      - LiveComponent
    - Phoenix
      - Context
      - Component

    ## Getting started

    ### Not sure where to start

    All snippets support the prefix `plvs`. So if you don't know where to get started, just type `plvs` and wait for the
    snippet recommendation to come up. From there a browsable list is given to you.

    ### Mnemonic layout

    All snippets use a mnemonic layout that matches the component name name space. So for example if you want to render a form in Phoenix LiveView

    You'll want to reach for `Phoenix.Component.form/1` this mnemonically translates to `pcf`.

    This applies to all snippets. See the table below to get a better understanding. Worst case, you just type `plvs` for a while and
    teach yourself which snippet mnemonics you would prefer to use.

    ## Snippet index

    | Name | Prefix | Reference |
    | ---- | ------ | --------- |
    #{doc_table}

    # Snippets
    #{snippet_examples}


    # Contributing

    ## Generating snippets and documentation

    ### Update the version

    Before generating documentation make sure that the package.json version field is changed to reflect the new semver for the changes.

    ## Run the build script

    ```sh
    mix escript.build;
    ./app
    ```

    This generates the README.md and corresponding snippet json.

    ## Publishing

    ```sh
    mix escript.build;
    ./app;
    vsce package;
    # Assuming you have the necessary tokens on your dev machine
    vsce publish;
    ```
    """

    File.write("./README.md", docs)

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

  defp to_snippet_documentation(snippet) do
    """
    ## #{snippet.name}

    ### Prefixes

    <pre>#{snippet.prefix |> Enum.join(",")}</pre>

    ### Template
    <pre>
    #{snippet.body}
    </pre>
    """
  end

  defp to_table_line(snippet) do
    """
    | #{snippet.name} | #{snippet.prefix |> Enum.join(",")} | [Reference](##{snippet.name |> String.downcase() |> String.replace(":", "") |> String.replace(" ", "-")}) |
    """
  end
end
