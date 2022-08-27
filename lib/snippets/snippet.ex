defmodule App.Snippets.Snippet do
  defstruct name: "", scope: "elixir", prefix: [""], body: [""]

  defimpl Jason.Encoder, for: App.Snippets.Snippet do
    def encode(value, opts) do
      Jason.Encode.map(Map.take(value, [:name, :scope, :prefix, :body]), opts)
    end
  end
end
