defmodule App.Snippets.Snippet do
  defstruct name: "",
            scope: "elixir",
            prefix: [""],
            body: [""],
            description: [""]

  defimpl Jason.Encoder, for: App.Snippets.Snippet do
    def encode(value, opts) do
      # Note here that scope is not being encoded. This is because scope is 
      # only used on a per snippet file basis
      Jason.Encode.map(Map.take(value, [:name, :prefix, :body, :description]), opts)
    end
  end
end
