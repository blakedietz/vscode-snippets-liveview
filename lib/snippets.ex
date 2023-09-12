defmodule App.Snippets do
  alias __MODULE__.Snippet

  def create_vscode_snippets(paths, snippet_directory) do
    paths
    |> Enum.map(fn path ->
      file = File.read!(Path.absname(path, snippet_directory))
      snippet = file |> String.split("\n")

      snippet_data =
        __MODULE__.generate(path)
        |> Map.put(:body, snippet)

      snippet_data
      |> Map.put(:description, "prefixes: #{snippet_data.prefix |> Enum.join(",")}")
    end)
  end

  def generate("ecto_changeset") do
    %Snippet{
      name: "Ecto: Schema changeset",
      scope: "elixir",
      prefix: ["plvs", "es", "esc"]
    }
  end

  def generate("ecto_optional_attrs") do
    %Snippet{
      name: "Ecto: Schema changeset optional attrs",
      scope: "elixir",
      prefix: ["plvs", "es", "esoa"]
    }
  end

  def generate("ecto_required_attrs") do
    %Snippet{
      name: "Ecto: Schema changeset required attrs",
      scope: "elixir",
      prefix: ["plvs", "es", "escra"]
    }
  end

  def generate("eex_case") do
    %Snippet{
      name: "eex: case",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "eexcase", "<% case"]
    }
  end

  def generate("eex_comments") do
    %Snippet{
      name: "eex: Comment",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "eexc", "<%#"]
    }
  end

  def generate("eex_cond") do
    %Snippet{
      name: "eex: cond",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "eexcond", "<% cond"]
    }
  end

  def generate("eex_for") do
    %Snippet{
      name: "eex: for",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "eexfor", "<% for"]
    }
  end

  def generate("eex_if") do
    %Snippet{
      name: "eex: if",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "eexif", "<% if"]
    }
  end

  def generate("eex_inline_with_output") do
    %Snippet{
      name: "eex: inline with output",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "<%"]
    }
  end

  def generate("eex_replace_with_result") do
    %Snippet{
      name: "eex: Replace with result",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "<%="]
    }
  end

  def generate("eex_return_contents_inside") do
    %Snippet{
      name: "eex: Return contents",
      scope: "phoenix-heex",
      prefix: ["plvs", "eex", "eexr", "<%%"]
    }
  end

  def generate("heex_comment") do
    %Snippet{
      name: "heex: Comment",
      scope: "phoenix-heex",
      prefix: ["plvs", "heex", "heexc", "<%!"]
    }
  end

  def generate("live_component_assign_helper") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent assign helper",
      scope: "elixir",
      prefix: ["plvs", "plc", "plca", "plcah"]
    }
  end

  def generate("live_component_call") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent call",
      scope: "phoenix-heex",
      prefix: ["plvs", "plc", "plcc", "<.", "<.live", "<.live_component"]
    }
  end

  def generate("live_component_handle_event") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent handle_event",
      scope: "elixir",
      prefix: ["plvs", "plc", "plche"]
    }
  end

  def generate("live_component_impl") do
    %Snippet{
      name: "LiveView: @impl Phoenix.LiveComponent",
      scope: "elixir",
      prefix: ["plvs", "plv", "@impl"]
    }
  end

  def generate("live_component_mount") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent mount",
      scope: "elixir",
      prefix: ["plvs", "plc", "plcm"]
    }
  end

  def generate("live_component_preload") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent preload",
      scope: "elixir",
      prefix: ["plvs", "plc", "plcp"]
    }
  end

  def generate("live_component_render") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent render",
      scope: "elixir",
      prefix: ["plvs", "plc", "plcr"]
    }
  end

  def generate("live_component_update") do
    %Snippet{
      name: "LiveView: Phoenix.LiveComponent update",
      scope: "elixir",
      prefix: ["plvs", "plc", "plcu"]
    }
  end

  def generate("live_view_handle_call") do
    %Snippet{
      name: "LiveView: handle_call",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvhc", "plvhcl", "def", "def handle_call"]
    }
  end

  def generate("live_view_handle_cast") do
    %Snippet{
      name: "LiveView: handle_cast",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvhc", "plvhcs", "def", "def handle_cast"]
    }
  end

  def generate("live_view_handle_event") do
    %Snippet{
      name: "LiveView: handle_event",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvhe", "def", "def handle_event"]
    }
  end

  def generate("live_view_handle_info") do
    %Snippet{
      name: "LiveView: handle_info",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvhi", "def", "def handle_info"]
    }
  end

  def generate("live_view_handle_params") do
    %Snippet{
      name: "LiveView: handle_params",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvhp", "def", "def handle_params"]
    }
  end

  def generate("live_view_impl") do
    %Snippet{
      name: "LiveView: @impl Phoenix.LiveView",
      scope: "elixir",
      prefix: ["plvs", "plv", "@impl"]
    }
  end

  def generate("live_view_mount") do
    %Snippet{
      name: "LiveView: Phoenix.LiveView mount",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvm", "def mount"]
    }
  end

  def generate("live_view_new") do
    %Snippet{
      name: "LiveView: New LiveView module",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvnlvm", "defmodule"]
    }
  end

  def generate("live_view_render") do
    %Snippet{
      name: "LiveView: render implementation",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvr", "def render"]
    }
  end

  def generate("live_view_render_slot") do
    %Snippet{
      name: "LiveView: Render slot",
      scope: "phoenix-heex",
      prefix: ["plvs", "plvrs"]
    }
  end

  def generate("live_view_socket_destructure") do
    %Snippet{
      name: "LiveView: socket destructure",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvsd", "socket"]
    }
  end

  def generate("live_view_terminate") do
    %Snippet{
      name: "LiveView: terminate",
      scope: "elixir",
      prefix: ["plvs", "plv", "plvt", "def terminate"]
    }
  end

  def generate("phoenix_component_assign") do
    %Snippet{
      name: "Phoenix: Component assign/2",
      scope: "elixir",
      prefix: ["plvs", "pc", "pca", "a", "assign"]
    }
  end

  def generate("phoenix_component_assign_new") do
    %Snippet{
      name: "Phoenix: Component assign_new/3",
      scope: "elixir",
      prefix: ["plvs", "pc", "pca", "pcan", "a", "assign", "assign_new"]
    }
  end

  def generate("phoenix_component_assigns_to_attributes") do
    %Snippet{
      name: "Phoenix: Component assigns_to_attributes/2",
      scope: "elixir",
      prefix: ["plvs", "pc", "pca", "pcat", "pcata", "a", "assigns", "assigns_to_attributes"]
    }
  end

  def generate("phoenix_component_changed") do
    %Snippet{
      name: "Phoenix: Component changed?/2",
      scope: "elixir",
      prefix: ["plvs", "pc", "pcc", "c", "changed?"]
    }
  end

  def generate("phoenix_component_definition") do
    %Snippet{
      name: "Phoenix: Component definition",
      scope: "elixir",
      prefix: ["plvs", "pc", "pcd"]
    }
  end

  def generate("phoenix_component_dynamic_tag") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.dynamic_tag/1",
      scope: "phoenix-heex",
      prefix: ["plvs", "pc", "pcc", "pcd", "pcdt", "<.", "<.dynamic_tag", "dynamic_tag"]
    }
  end

  def generate("phoenix_component_focus_wrap") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.focus_wrap/1",
      scope: "phoenix-heex",
      prefix: ["plvs", "pc", "pcc", "pcf", "pcfw", "<.", "<.focus_wrap", "focus_wrap"]
    }
  end

  def generate("phoenix_component_form") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.form/1",
      scope: "phoenix-heex",
      prefix: ["plvs", "pc", "pcf", "<.", "<.form", "form"]
    }
  end

  def generate("phoenix_component_inputs_for") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.inputs_for/1",
      scope: "phoenix-heex",
      prefix: ["plvs", "pc", "pci", "pcif", "<.", "<.inputs_for", "inputs_for"]
    }
  end

  def generate("phoenix_component_intersperse") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.intersperse/1",
      scope: "phoenix-heex",
      prefix: ["plvs", "pc", "pci", "<.", "<.intersperse", "intersperse"]
    }
  end

  def generate("phoenix_component_link") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.link/1",
      scope: "phoenix-heex",
      prefix: ["plvs", "pc", "pcl", "<.", "<.link", "link"]
    }
  end

  def generate("phoenix_component_live_file_input") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.live_file_input/1",
      scope: "phoenix-heex",
      prefix: [
        "plvs",
        "pc",
        "pc",
        "pclf",
        "pclfi",
        "<.",
        "<.live_",
        "<.live_file",
        "live_file_input"
      ]
    }
  end

  def generate("phoenix_component_live_img_preview") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.live_img_preview/1",
      scope: "phoenix-heex",
      prefix: [
        "plvs",
        "pc",
        "pc",
        "pcli",
        "pclip",
        "<.",
        "<.live_",
        "<.live_img",
        "live_img_preview"
      ]
    }
  end

  def generate("phoenix_component_live_render") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.live_render/3",
      scope: "phoenix-heex",
      prefix: [
        "plvs",
        "pc",
        "pc",
        "pclr",
        "<",
        "<%",
        "<%=",
        "<%= live_render",
        "live_render"
      ]
    }
  end

  def generate("phoenix_component_live_title") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.live_title/1",
      scope: "phoenix-heex",
      prefix: [
        "plvs",
        "pc",
        "pc",
        "pclt",
        "<.",
        "<.live_",
        "<.live_title",
        "live_title"
      ]
    }
  end

  def generate("phoenix_component_macros_attr") do
    %Snippet{
      name: "Phoenix: Component Macros attr/3",
      scope: "elixir",
      prefix: ["plvs", "pc", "pcm", "pcma", "attr"]
    }
  end

  def generate("phoenix_component_macros_embed_templates") do
    %Snippet{
      name: "Phoenix: Component Macros embed_templates/2",
      scope: "elixir",
      prefix: ["plvs", "pc", "pcm", "pcme", "pcmet", "embed_"]
    }
  end

  def generate("phoenix_component_macros_sigil_h") do
    %Snippet{
      name: "Phoenix: Component Macros sigil_H/2",
      scope: "elixir",
      prefix: ["plvs", "pc", "pcm", "pcms", "pcmsh", "~H"]
    }
  end

  def generate("phoenix_component_macros_slot") do
    %Snippet{
      name: "Phoenix: Component Macros slot/2",
      scope: "elixir",
      prefix: ["plvs", "pc", "pcm", "pcms", "slot"]
    }
  end

  def generate("phoenix_component_render_slot") do
    %Snippet{
      name: "Phoenix: Phoenix.Component.render_slot/2",
      scope: "phoenix-heex",
      prefix: [
        "plvs",
        "pc",
        "pc",
        "pcr",
        "pcrs",
        "<",
        "<%",
        "<%=",
        "<%= render_slot",
        "render_slot"
      ]
    }
  end

  def generate("phoenix_context_change") do
    %Snippet{
      name: "Phoenix: Context change",
      scope: "elixir",
      prefix: ["plvs", "pctx", "pctxch"]
    }
  end

  def generate("phoenix_context_create") do
    %Snippet{
      name: "Phoenix: Context create",
      scope: "elixir",
      prefix: ["plvs", "pctx", "pctxcr"]
    }
  end

  def generate("phoenix_context_delete") do
    %Snippet{
      name: "Phoenix: Context delete",
      scope: "elixir",
      prefix: ["plvs", "pctx", "pctxd"]
    }
  end

  def generate("phoenix_context_get") do
    %Snippet{
      name: "Phoenix: Context get",
      scope: "elixir",
      prefix: ["plvs", "pctx", "pctxg"]
    }
  end

  def generate("phoenix_context_list") do
    %Snippet{
      name: "Phoenix: Context list",
      scope: "elixir",
      prefix: ["plvs", "pctx", "pctxl"]
    }
  end

  def generate("phoenix_context_update") do
    %Snippet{
      name: "Phoenix: Context update",
      scope: "elixir",
      prefix: ["plvs", "pctx", "pctxu"]
    }
  end
end
