defmodule App.Snippets do
  alias __MODULE__.Snippet

  def generate("ecto_changeset") do
    %Snippet{
      name: "Ecto: Schema changeset",
      prefix: ["plvs", "es", "esc"]
    }
  end

  def generate("ecto_optional_attrs") do
    %Snippet{
      name: "Ecto: Schema changeset optional attrs",
      prefix: ["plvs", "es", "esoa"]
    }
  end

  def generate("ecto_required_attrs") do
    %Snippet{
      name: "Ecto: Schema changeset required attrs",
      prefix: ["plvs", "es", "escra"]
    }
  end

  def generate("eex_case") do
    %Snippet{
      name: "eex: case",
      prefix: ["plvs", "eex", "eexcase", "<% case"]
    }
  end

  def generate("eex_comments") do
    %Snippet{
      name: "eex: Comment",
      prefix: ["plvs", "eex", "eexc", "<%#"]
    }
  end

  def generate("eex_cond") do
    %Snippet{
      name: "eex: cond",
      prefix: ["plvs", "eex", "eexcond", "<% cond"]
    }
  end

  def generate("eex_for") do
    %Snippet{
      name: "eex: for",
      prefix: ["plvs", "eex", "eexfor", "<% for"]
    }
  end

  def generate("eex_if") do
    %Snippet{
      name: "eex: if",
      prefix: ["plvs", "eex", "eexif", "<% if"]
    }
  end

  def generate("eex_inline_with_output") do
    %Snippet{
      name: "eex: inline with output",
      prefix: ["plvs", "eex", "<%"]
    }
  end

  def generate("eex_replace_with_result") do
    %Snippet{
      name: "eex: Replace with result",
      prefix: ["plvs", "eex", "<%="]
    }
  end

  def generate("eex_return_contents_inside") do
    %Snippet{
      name: "eex: Return contents",
      prefix: ["plvs", "eex", "eexr", "<%%"]
    }
  end

  def generate("live_component_assign_helper") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent assign helper",
      prefix: ["plvs", "plc", "plca", "plcah"]
    }
  end

  def generate("live_component_call") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent call",
      prefix: ["plvs", "plc", "plcc"]
    }
  end

  def generate("live_component_handle_event") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent handle_event",
      prefix: ["plvs", "plc", "plche"]
    }
  end

  def generate("live_component_impl") do
    %Snippet{
      name: "LiveView: @impl Phoenix.LiveComponent",
      prefix: ["plvs", "plv", "@impl"]
    }
  end

  def generate("live_component_mount") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent mount",
      prefix: ["plvs", "plc", "plcm"]
    }
  end

  def generate("live_component_preload") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent preload",
      prefix: ["plvs", "plc", "plcp"]
    }
  end

  def generate("live_component_render") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent render",
      prefix: ["plvs", "plc", "plcr"]
    }
  end

  def generate("live_component_update") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent update",
      prefix: ["plvs", "plc", "plcu"]
    }
  end

  def generate("live_view_handle_call") do
    %Snippet{
      name: "LiveView: handle_call",
      prefix: ["plvs", "plv", "plvhi", "def", "def handle_call"]
    }
  end

  def generate("live_view_handle_cast") do
    %Snippet{
      name: "LiveView: handle_cast",
      prefix: ["plvs", "plv", "plvhi", "def", "def handle_cast"]
    }
  end

  def generate("live_view_handle_event") do
    %Snippet{
      name: "LiveView: handle_event",
      prefix: ["plvs", "plv", "plvhe", "def", "def handle_event"]
    }
  end

  def generate("live_view_handle_info") do
    %Snippet{
      name: "LiveView: handle_info",
      prefix: ["plvs", "plv", "plvhi", "def", "def handle_info"]
    }
  end

  def generate("live_view_handle_params") do
    %Snippet{
      name: "LiveView: handle_params",
      prefix: ["plvs", "plv", "plvhe", "def", "def handle_params"]
    }
  end

  def generate("live_view_impl") do
    %Snippet{
      name: "LiveView: @impl Phoenix.LiveView",
      prefix: ["plvs", "plv", "@impl"]
    }
  end

  def generate("live_view_mount") do
    %Snippet{
      name: "LiveView: Phoenix.LiveView mount",
      prefix: ["plvs", "plv", "plvm", "def mount"]
    }
  end

  def generate("live_view_new") do
    %Snippet{
      name: "LiveView: New LiveView module",
      prefix: ["plvs", "plv", "plvnlvm", "defmodule"]
    }
  end

  def generate("live_view_render") do
    %Snippet{
      name: "LiveView: render implementation",
      prefix: ["plvs", "plv", "plvr", "def render"]
    }
  end

  def generate("live_view_render_slot") do
    %Snippet{
      name: "LiveView: Render slot",
      prefix: ["plvs", "plvrs"]
    }
  end

  def generate("live_view_socket_destructure") do
    %Snippet{
      name: "LiveView: socket destructure",
      prefix: ["plvs", "plv", "plvsd", "socket"]
    }
  end

  def generate("live_view_terminate") do
    %Snippet{
      name: "LiveView: terminate",
      prefix: ["plvs", "plv", "plvt", "def terminate"]
    }
  end

  def generate("phoenix_component_definition") do
    %Snippet{
      name: "Phoenix: Component definition",
      prefix: ["plvs", "pc", "pcd"]
    }
  end

  def generate("phoenix_component_form") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.form/1",
      prefix: ["plvs", "pc", "pcf"]
    }
  end

  def generate("phoenix_component_macros_attr") do
    %Snippet{
      name: "Phoenix: Component Macros attr",
      prefix: ["plvs", "pc", "pcm", "pcma", "attr"]
    }
  end

  def generate("phoenix_context_change") do
    %Snippet{
      name: "Phoenix: Context change",
      prefix: ["plvs", "pctx", "pctxch"]
    }
  end

  def generate("phoenix_context_create") do
    %Snippet{
      name: "Phoenix: Context create",
      prefix: ["plvs", "pctx", "pctxcr"]
    }
  end

  def generate("phoenix_context_delete") do
    %Snippet{
      name: "Phoenix: Context delete",
      prefix: ["plvs", "pctx", "pctxd"]
    }
  end

  def generate("phoenix_context_get") do
    %Snippet{
      name: "Phoenix: Context get",
      prefix: ["plvs", "pctx", "pctxg"]
    }
  end

  def generate("phoenix_context_list") do
    %Snippet{
      name: "Phoenix: Context list",
      prefix: ["plvs", "pctx", "pctxl"]
    }
  end

  def generate("phoenix_context_update") do
    %Snippet{
      name: "Phoenix: Context update",
      prefix: ["plvs", "pctx", "pctxu"]
    }
  end
end
