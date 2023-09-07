defmodule App.Snippets.Snippet do
  defstruct name: "",
            scope: "elixir",
            prefix: [""],
            body: [""],
            description: [""]

  defimpl Jason.Encoder, for: App.Snippets.Snippet do
    def encode(value, opts) do
      Jason.Encode.map(Map.take(value, [:name, :prefix, :body, :description]), opts)
    end
  end
end
