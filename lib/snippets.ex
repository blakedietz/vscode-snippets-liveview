defmodule App.Snippets do
  alias __MODULE__.Snippet

  def generate("ecto_changeset") do
    %Snippet{
      name: "Ecto: changeset",
      prefix: ["defec"]
    }
  end

  def generate("ecto_optional_attrs") do
    %Snippet{
      name: "Ecto: Changeset optional attrs",
      prefix: ["eoa", "optional"]
    }
  end

  def generate("ecto_required_attrs") do
    %Snippet{
      name: "Ecto: Changeset required attrs",
      prefix: ["era", "req", "required"]
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

  def generate("live_view_handle_info") do
    %Snippet{
      name: "LiveView: handle_info",
      prefix: ["lv", "lvhi", "def", "def handle_info"]
    }
  end

  def generate("phoenix_context_create") do
    %Snippet{
      name: "Phoenix: Context create",
      prefix: ["pc"]
    }
  end

  def generate("phoenix_context_change") do
    %Snippet{
      name: "Phoenix: Context change",
      prefix: ["pc"]
    }
  end

  def generate("phoenix_context_update") do
    %Snippet{
      name: "Phoenix: Context update",
      prefix: ["pc"]
    }
  end

  def generate("phoenix_context_delete") do
    %Snippet{
      name: "Phoenix: Context delete",
      prefix: ["pc"]
    }
  end

  def generate("phoenix_context_get") do
    %Snippet{
      name: "Phoenix: Context get",
      prefix: ["pc"]
    }
  end

  def generate("phoenix_context_list") do
    %Snippet{
      name: "Phoenix: Context list",
      prefix: ["pc"]
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
      prefix: ["lv", "defmlv"]
    }
  end

  def generate("live_view_render") do
    %Snippet{
      name: "LiveView: render",
      prefix: ["lv", "lvr", "deflvr"]
    }
  end

  def generate("live_view_socket_destructure") do
    %Snippet{
      name: "LiveView: socket destructure",
      prefix: ["lv", "lvsd"]
    }
  end

  def generate("live_view_impl") do
    %Snippet{
      name: "LiveView: @impl Phoenix.LiveView",
      prefix: ["lv", "lvimpl", "@impl"]
    }
  end

  def generate("live_component_call") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent call",
      prefix: ["lv", "lvlc", "<.live_"]
    }
  end

  def generate("live_component_impl") do
    %Snippet{
      name: "LiveView: @impl Phoenix.LiveComponent",
      prefix: ["lvlc", "lc", "@impl"]
    }
  end

  def generate("live_component_handle_event") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent handle_event",
      prefix: ["lvlc", "lvlche"]
    }
  end

  def generate("live_component_update") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent update",
      prefix: ["lvlc", "lvlcu"]
    }
  end

  def generate("live_component_assign_helper") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent assign_helper",
      prefix: ["lv", "lvlc"]
    }
  end

  def generate("phoenix_component_definition") do
    %Snippet{
      name: "Phoenix: Commponent definition",
      prefix: ["defpcd"]
    }
  end
end
