defmodule App.Documentation do
  def create_documentation(paths, snippet_directory) do
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

    """
    # Phoenix LiveView snippets

    ## Description

    A well documented set of snippets commonly used when writing LiveView code. The snippets touch on all aspects of development when writing LiveView
    code. Here's a high level list:

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

    ### Not sure where to start?

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

    ```sh
    # This generates the README.md and corresponding snippet json.
    make build
    ```

    ## Publishing

    ```sh
    # assuming you have vsce installed
    make publish
    ```
    """
  end

  defp to_snippet_documentation(snippet) do
    """
    ## #{snippet.name}

    ### Prefixes

    `#{snippet.prefix |> Enum.join(",")}`

    ### Template
    ```
    #{snippet.body}
    ```
    """
  end

  defp to_table_line(snippet) do
    """
    | #{snippet.name} | #{snippet.prefix |> Enum.join(",")} | [Reference](##{snippet.name |> String.downcase() |> String.replace(":", "") |> String.replace(" ", "-")}) |
    """
  end
end
