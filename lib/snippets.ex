defmodule App.Snippets do
  alias __MODULE__.Snippet

  def generate("ecto_changeset") do
    %Snippet{
      name: "Ecto: changeset",
      prefix: ["defec"]
    }
  end

  def generate("ecto_context_change") do
    %Snippet{
      name: "Ecto: Context change",
      prefix: ["defecc"]
    }
  end

  def generate("ecto_context_update") do
    %Snippet{
      name: "Ecto: Context update",
      prefix: ["defecu"]
    }
  end

  def generate("eex_replace_with_result") do
    %Snippet{
      name: "eex: Replace with result",
      prefix: ["<%="]
    }
  end

  def generate("eex_inline_with_output") do
    %Snippet{
      name: "eex: inline with output",
      prefix: ["<%"]
    }
  end

  def generate("live_view_render_slot") do
    %Snippet{
      name: "LiveView: Render slot",
      prefix: ["<%= r"]
    }
  end

  def generate("eex_return_contents_inside") do
    %Snippet{
      name: "eex: Return contents",
      prefix: ["<%%"]
    }
  end

  def generate("eex_comments") do
    %Snippet{
      name: "eex: Comment",
      prefix: ["<%#"]
    }
  end

  def generate("eex_if") do
    %Snippet{
      name: "eex: if",
      prefix: ["eeif", "<% if"]
    }
  end

  def generate("eex_for") do
    %Snippet{
      name: "eex: for",
      prefix: ["eefor", "<% for"]
    }
  end

  def generate("eex_cond") do
    %Snippet{
      name: "eex: cond",
      prefix: ["eecond", "<% cond"]
    }
  end

  def generate("eex_case") do
    %Snippet{
      name: "eex: case",
      prefix: ["eecase", "<% case"]
    }
  end

  def generate("live_view_new") do
    %Snippet{
      name: "LiveView: new LiveView module",
      prefix: ["defmlv"]
    }
  end

  def generate("live_view_render") do
    %Snippet{
      name: "LiveView: render",
      prefix: ["lvr", "deflvr"]
    }
  end

  def generate("live_view_socket_destructure") do
    %Snippet{
      name: "LiveView: socket destructure",
      prefix: ["lvsd"]
    }
  end

  def generate("phoenix_component_definition") do
    %Snippet{
      name: "Phoenix: Commponent definition",
      prefix: ["defpcd"]
    }
  end
end
