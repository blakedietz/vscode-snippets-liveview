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
| Ecto: Schema changeset | plvs,es,esc | [Reference](#ecto-schema-changeset) |
| Ecto: Schema changeset optional attrs | plvs,es,esoa | [Reference](#ecto-schema-changeset-optional-attrs) |
| Ecto: Schema changeset required attrs | plvs,es,escra | [Reference](#ecto-schema-changeset-required-attrs) |
| LiveView: @impl Phoenix.LiveComponent | plvs,plv,@impl | [Reference](#liveview-@impl-phoenix.livecomponent) |
| LiveView: @impl Phoenix.LiveView | plvs,plv,@impl | [Reference](#liveview-@impl-phoenix.liveview) |
| LiveView: New LiveView module | plvs,plv,plvnlvm,defmodule | [Reference](#liveview-new-liveview-module) |
| LiveView: Phoenix.LiveComponent assign helper | plvs,plc,plca,plcah | [Reference](#liveview-phoenix.livecomponent-assign-helper) |
| LiveView: Phoenix.LiveComponent call | plvs,plc,plcc | [Reference](#liveview-phoenix.livecomponent-call) |
| LiveView: Phoenix.LiveComponent handle_event | plvs,plc,plche | [Reference](#liveview-phoenix.livecomponent-handle_event) |
| LiveView: Phoenix.LiveComponent mount | plvs,plc,plcm | [Reference](#liveview-phoenix.livecomponent-mount) |
| LiveView: Phoenix.LiveComponent preload | plvs,plc,plcp | [Reference](#liveview-phoenix.livecomponent-preload) |
| LiveView: Phoenix.LiveComponent render | plvs,plc,plcr | [Reference](#liveview-phoenix.livecomponent-render) |
| LiveView: Phoenix.LiveComponent update | plvs,plc,plcu | [Reference](#liveview-phoenix.livecomponent-update) |
| LiveView: Phoenix.LiveView mount | plvs,plv,plvm,def mount | [Reference](#liveview-phoenix.liveview-mount) |
| LiveView: Render slot | plvs,plvrs | [Reference](#liveview-render-slot) |
| LiveView: handle_call | plvs,plv,plvhc,plvhcl,def,def handle_call | [Reference](#liveview-handle_call) |
| LiveView: handle_cast | plvs,plv,plvhc,plvhcs,def,def handle_cast | [Reference](#liveview-handle_cast) |
| LiveView: handle_event | plvs,plv,plvhe,def,def handle_event | [Reference](#liveview-handle_event) |
| LiveView: handle_info | plvs,plv,plvhi,def,def handle_info | [Reference](#liveview-handle_info) |
| LiveView: handle_params | plvs,plv,plvhp,def,def handle_params | [Reference](#liveview-handle_params) |
| LiveView: render implementation | plvs,plv,plvr,def render | [Reference](#liveview-render-implementation) |
| LiveView: socket destructure | plvs,plv,plvsd,socket | [Reference](#liveview-socket-destructure) |
| LiveView: terminate | plvs,plv,plvt,def terminate | [Reference](#liveview-terminate) |
| Phoenix: Component Macros attr/3 | plvs,pc,pcm,pcma,attr | [Reference](#phoenix-component-macros-attr/3) |
| Phoenix: Component Macros embed_templates/2 | plvs,pc,pcm,pcme,pcmet,embed_ | [Reference](#phoenix-component-macros-embed_templates/2) |
| Phoenix: Component Macros sigil_H/2 | plvs,pc,pcm,pcms,pcmsh,~H | [Reference](#phoenix-component-macros-sigil_h/2) |
| Phoenix: Component Macros slot/2 | plvs,pc,pcm,pcms,slot | [Reference](#phoenix-component-macros-slot/2) |
| Phoenix: Component assign/2 | plvs,pc,pca,a,assign | [Reference](#phoenix-component-assign/2) |
| Phoenix: Component assign_new/3 | plvs,pc,pca,pcan,a,assign,assign_new | [Reference](#phoenix-component-assign_new/3) |
| Phoenix: Component assigns_to_attributes/2 | plvs,pc,pca,pcat,pcata,a,assigns,assigns_to_attributes | [Reference](#phoenix-component-assigns_to_attributes/2) |
| Phoenix: Component changed?/2 | plvs,pc,pcc,c,changed? | [Reference](#phoenix-component-changed?/2) |
| Phoenix: Component definition | plvs,pc,pcd | [Reference](#phoenix-component-definition) |
| Phoenix: Context change | plvs,pctx,pctxch | [Reference](#phoenix-context-change) |
| Phoenix: Context create | plvs,pctx,pctxcr | [Reference](#phoenix-context-create) |
| Phoenix: Context delete | plvs,pctx,pctxd | [Reference](#phoenix-context-delete) |
| Phoenix: Context get | plvs,pctx,pctxg | [Reference](#phoenix-context-get) |
| Phoenix: Context list | plvs,pctx,pctxl | [Reference](#phoenix-context-list) |
| Phoenix: Context update | plvs,pctx,pctxu | [Reference](#phoenix-context-update) |
| Phoenix: Phoenix.Component.dynamic_tag/1 | plvs,pc,pcc,pcd,pcdt,<.,<.dynamic_tag,dynamic_tag | [Reference](#phoenix-phoenix.component.dynamic_tag/1) |
| Phoenix: Phoenix.Component.form/1 | plvs,pc,pcf,<.,<.form,form | [Reference](#phoenix-phoenix.component.form/1) |
| Phoenix: Phoenix.Component.inputs_for/1 | plvs,pc,pci,pcif,<.,<.inputs_for,inputs_for | [Reference](#phoenix-phoenix.component.inputs_for/1) |
| Phoenix: Phoenix.Component.intersperse/1 | plvs,pc,pci,<.,<.intersperse,intersperse | [Reference](#phoenix-phoenix.component.intersperse/1) |
| Phoenix: Phoenix.Component.link/1 | plvs,pc,pcl,<.,<.link,link | [Reference](#phoenix-phoenix.component.link/1) |
| Phoenix: Phoenix.Component.live_file_input/1 | plvs,pc,pc,pclf,pclfi,<.,<.live_,<.live_file,live_file_input | [Reference](#phoenix-phoenix.component.live_file_input/1) |
| Phoenix: Phoenix.Component.live_img_preview/1 | plvs,pc,pc,pcli,pclip,<.,<.live_,<.live_img,live_img_preview | [Reference](#phoenix-phoenix.component.live_img_preview/1) |
| Phoenix: Phoenix.Component.live_title/1 | plvs,pc,pc,pclt,<.,<.live_,<.live_title,live_title | [Reference](#phoenix-phoenix.component.live_title/1) |
| eex: Comment | plvs,eex,eexc,<%# | [Reference](#eex-comment) |
| eex: Replace with result | plvs,eex,<%= | [Reference](#eex-replace-with-result) |
| eex: Return contents | plvs,eex,eexr,<%% | [Reference](#eex-return-contents) |
| eex: case | plvs,eex,eexcase,<% case | [Reference](#eex-case) |
| eex: cond | plvs,eex,eexcond,<% cond | [Reference](#eex-cond) |
| eex: for | plvs,eex,eexfor,<% for | [Reference](#eex-for) |
| eex: if | plvs,eex,eexif,<% if | [Reference](#eex-if) |
| eex: inline with output | plvs,eex,<% | [Reference](#eex-inline-with-output) |


# Snippets
## Ecto: Schema changeset

### Prefixes

```plvs,es,esc```

### Template
```
def changeset(${1:name}, attrs) do
  required_attrs = [$2]
  optional_attrs = [$3]

  ${1:name}
  |> cast(attrs, required_attrs ++ optional_attrs)
  |> validate_required(required_attrs)
end

```
## Ecto: Schema changeset optional attrs

### Prefixes

```plvs,es,esoa```

### Template
```
optional_attrs = [$0]
```
## Ecto: Schema changeset required attrs

### Prefixes

```plvs,es,escra```

### Template
```
required_attrs = [$0]
```
## LiveView: @impl Phoenix.LiveComponent

### Prefixes

```plvs,plv,@impl```

### Template
```
@impl Phoenix.LiveComponent
```
## LiveView: @impl Phoenix.LiveView

### Prefixes

```plvs,plv,@impl```

### Template
```
@impl Phoenix.LiveView
```
## LiveView: New LiveView module

### Prefixes

```plvs,plv,plvnlvm,defmodule```

### Template
```
defmodule $1 do
  use $2, :live_view

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    $0
    """
  end

  @impl Phoenix.LiveView
  def mount(${3: params}, ${4: session}, ${5: socket}) do
    $6
    {:ok, socket}
  end
end
```
## LiveView: Phoenix.LiveComponent assign helper

### Prefixes

```plvs,plc,plca,plcah```

### Template
```
def assign_$1(socket, $1) do
  assign(socket, $1: $1)
end
```
## LiveView: Phoenix.LiveComponent call

### Prefixes

```plvs,plc,plcc```

### Template
```
<.live_component
  module={$1}
  id={$2}
  $0
/>

```
## LiveView: Phoenix.LiveComponent handle_event

### Prefixes

```plvs,plc,plche```

### Template
```
@impl Phoenix.LiveComponent
def handle_event(${1:event}, ${2:unsigned_params}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end
```
## LiveView: Phoenix.LiveComponent mount

### Prefixes

```plvs,plc,plcm```

### Template
```
@impl Phoenix.LiveComponent
def mount(${1:socket}) do
  $0
  {:ok, ${2:socket}}
end

```
## LiveView: Phoenix.LiveComponent preload

### Prefixes

```plvs,plc,plcp```

### Template
```
@impl Phoenix.LiveComponent
def preload(${1:list_of_assigns}) do
  $0
  $1
end

```
## LiveView: Phoenix.LiveComponent render

### Prefixes

```plvs,plc,plcr```

### Template
```
@impl Phoenix.LiveComponent
def render(${1:assigns}) do
  ~H"""
  $0
  """
end

```
## LiveView: Phoenix.LiveComponent update

### Prefixes

```plvs,plc,plcu```

### Template
```
@impl Phoenix.LiveComponent
def update(${1:assigns}, ${2:socket}) do
  $0

  {:ok, socket}
end
```
## LiveView: Phoenix.LiveView mount

### Prefixes

```plvs,plv,plvm,def mount```

### Template
```
@impl Phoenix.LiveView
def mount(${1:params}, ${2:session}, ${3:socket}) do
  ${4:{:noreply, socket}}
end

```
## LiveView: Render slot

### Prefixes

```plvs,plvrs```

### Template
```
<%= render_slot(${1:@inner_block}) %>
```
## LiveView: handle_call

### Prefixes

```plvs,plv,plvhc,plvhcl,def,def handle_call```

### Template
```
@impl Phoenix.LiveView
def handle_call(${1:msg}, ${2:from}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end

```
## LiveView: handle_cast

### Prefixes

```plvs,plv,plvhc,plvhcs,def,def handle_cast```

### Template
```
@impl Phoenix.LiveView
def handle_cast(${1:msg}, ${2:socket}) do
  $0

  ${3:{:noreply, socket}}
end

```
## LiveView: handle_event

### Prefixes

```plvs,plv,plvhe,def,def handle_event```

### Template
```
@impl Phoenix.LiveView
def handle_event(${1:event}, ${2:unsigned_params}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end

```
## LiveView: handle_info

### Prefixes

```plvs,plv,plvhi,def,def handle_info```

### Template
```
@impl Phoenix.LiveView
def handle_info(${1:message}, ${2:socket}) do
  $0

  {:noreply, ${3:socket}}
end
```
## LiveView: handle_params

### Prefixes

```plvs,plv,plvhp,def,def handle_params```

### Template
```
@impl Phoenix.LiveView
def handle_params(${1:unsigned_params}, ${2:uri}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end

```
## LiveView: render implementation

### Prefixes

```plvs,plv,plvr,def render```

### Template
```
@impl Phoenix.LiveView
def render(${1:assigns}) do
  ~H"""
  $0
  """
end

```
## LiveView: socket destructure

### Prefixes

```plvs,plv,plvsd,socket```

### Template
```
%{ assigns: %{$1} } = $0
```
## LiveView: terminate

### Prefixes

```plvs,plv,plvt,def terminate```

### Template
```
@impl Phoenix.LiveView
def terminate(${1: reason}, ${2:socket}) do
  $3
end

```
## Phoenix: Component Macros attr/3

### Prefixes

```plvs,pc,pcm,pcma,attr```

### Template
```
attr :$1, :$2, required: $3$0

```
## Phoenix: Component Macros embed_templates/2

### Prefixes

```plvs,pc,pcm,pcme,pcmet,embed_```

### Template
```
embed_templates "$1"

```
## Phoenix: Component Macros sigil_H/2

### Prefixes

```plvs,pc,pcm,pcms,pcmsh,~H```

### Template
```
~H"""
$0
"""

```
## Phoenix: Component Macros slot/2

### Prefixes

```plvs,pc,pcm,pcms,slot```

### Template
```
slot :${1:name}, required: $2

```
## Phoenix: Component assign/2

### Prefixes

```plvs,pc,pca,a,assign```

### Template
```
assign(${1:socket_or_assigns}, $2: $3)$0

```
## Phoenix: Component assign_new/3

### Prefixes

```plvs,pc,pca,pcan,a,assign,assign_new```

### Template
```
assign_new(${1:socket_or_assigns}, :${2:key}, ${3:fn %{$4} = assigns ->
  $0
end})

```
## Phoenix: Component assigns_to_attributes/2

### Prefixes

```plvs,pc,pca,pcat,pcata,a,assigns,assigns_to_attributes```

### Template
```
assigns_to_attributes(${1:assigns}, ${2:[]})$0

```
## Phoenix: Component changed?/2

### Prefixes

```plvs,pc,pcc,c,changed?```

### Template
```
changed?(${1:socket_or_assigns}, :$2)$0

```
## Phoenix: Component definition

### Prefixes

```plvs,pc,pcd```

### Template
```
def ${1:component}(${2:assigns}) do
  ~H"""
  $3
  """
end
```
## Phoenix: Context change

### Prefixes

```plvs,pctx,pctxch```

### Template
```
@doc """
Returns an `%Ecto.Changeset{}` for tracking ${1/(.*)/${1:/pascalcase}/} changes.

## Examples

    iex> change_$1(%{field: value})
    %Ecto.Changeset{data: %${1/(.*)/${1:/pascalcase}/}{}}

"""
def change_${1:name}(%${1/(.*)/${1:/pascalcase}/}{} = $1, attrs \\\\ %{} ) do
  ${1/(.*)/${1:/pascalcase}/}.changeset($1, attrs)
end

```
## Phoenix: Context create

### Prefixes

```plvs,pctx,pctxcr```

### Template
```
@doc """
Creates a ${1/(.*)/${1:/pascalcase}/}.

## Examples

    iex> create_$1(%{field: value})
    {:ok, %${1/(.*)/${1:/pascalcase}/}{}}

    iex> create_$1(%{field: bad_value})
    {:error, ...}

"""
def create_${1:name}(attrs \\\\ %{}) do
  %${1/(.*)/${1:/pascalcase}/}{}
  |> ${1/(.*)/${1:/pascalcase}/}.changeset(attrs)
  |> Repo.insert()
end

```
## Phoenix: Context delete

### Prefixes

```plvs,pctx,pctxd```

### Template
```
@doc """
  Deletes a ${1/(.*)/${1:/pascalcase}/}.

  ## Examples

      iex> delete_$1($1)
      {:ok, %${1/(.*)/${1:/pascalcase}/}{}}

      iex> delete_$1($1)
      {:error, %Ecto.Changeset{}}
"""
def delete_${1:name}(%${1/(.*)/${1:/pascalcase}/}{} = $1) do
  Repo.delete($1)
end

```
## Phoenix: Context get

### Prefixes

```plvs,pctx,pctxg```

### Template
```
@doc """
Gets a single ${1/(.*)/${1:/pascalcase}/}.

## Examples

    iex> get_$1!(123)
    %${1/(.*)/${1:/pascalcase}/}{}

    iex> get_$1!(456)
    ** (Ecto.NoResultsError)

"""
def get_${1:name}!(id) do
  Repo.get!(${1/(.*)/${1:/pascalcase}/}, id)
end

```
## Phoenix: Context list

### Prefixes

```plvs,pctx,pctxl```

### Template
```
@doc """
Returns the list of ${1/(.*)/${1:/pascalcase}/}.

## Examples

    iex> list_$1()
    [%${1/(.*)/${1:/pascalcase}/}{}, ...]

"""
def list_${1:name}s do
  Repo.all(${1/(.*)/${1:/pascalcase}/})
end

```
## Phoenix: Context update

### Prefixes

```plvs,pctx,pctxu```

### Template
```
@doc """
Updates a $1.

## Examples

    iex> update_$1(%{field: value})
    {:ok, %${1/(.*)/${1:/pascalcase}/}{}}

    iex> update_$1(%{field: bad_value})
    {:error, %Ecto.Changeset{}}

"""
def update_${1:name}(%${1/(.*)/${1:/pascalcase}/}{} = $1, attrs) do
  $1
  |> ${1/(.*)/${1:/pascalcase}/}.changeset(attrs)
  |> Repo.update()
end

```
## Phoenix: Phoenix.Component.dynamic_tag/1

### Prefixes

```plvs,pc,pcc,pcd,pcdt,<.,<.dynamic_tag,dynamic_tag```

### Template
```
<.dynamic_tag name="$1" type="$2">
  $0
</.dynamic_tag >

```
## Phoenix: Phoenix.Component.form/1

### Prefixes

```plvs,pc,pcf,<.,<.form,form```

### Template
```
<.form
  for={${1:@changeset}}
  let={${2:form}}
  phx-change="${3:validate}"
  phx-submit="${4:submit}"
>
  $0
</.form>

```
## Phoenix: Phoenix.Component.inputs_for/1

### Prefixes

```plvs,pc,pci,pcif,<.,<.inputs_for,inputs_for```

### Template
```
<.inputs_for :let={${1:f_nested}} field={${2:f[:nested]}}>
  $0
</.inputs_for>

```
## Phoenix: Phoenix.Component.intersperse/1

### Prefixes

```plvs,pc,pci,<.,<.intersperse,intersperse```

### Template
```
<.intersperse :let={${1:item}} enum={${2:[$3]}}>
  <:separator>
    $0
  </:separator>
</.intersperse>

```
## Phoenix: Phoenix.Component.link/1

### Prefixes

```plvs,pc,pcl,<.,<.link,link```

### Template
```
<.link $1>
  $0
</.link>

```
## Phoenix: Phoenix.Component.live_file_input/1

### Prefixes

```plvs,pc,pc,pclf,pclfi,<.,<.live_,<.live_file,live_file_input```

### Template
```
<.live_file_input upload={@uploads.$1} />$0

```
## Phoenix: Phoenix.Component.live_img_preview/1

### Prefixes

```plvs,pc,pc,pcli,pclip,<.,<.live_,<.live_img,live_img_preview```

### Template
```
<.live_image_preview entry={$1}$2/>$0

```
## Phoenix: Phoenix.Component.live_title/1

### Prefixes

```plvs,pc,pc,pclt,<.,<.live_,<.live_title,live_title```

### Template
```
<.live_title prefix="${1:"My App"}">
  <%= assigns[$2] || "Welcome" %>
</.live_title>

```
## eex: Comment

### Prefixes

```plvs,eex,eexc,<%#```

### Template
```
<%# $0 %>
```
## eex: Replace with result

### Prefixes

```plvs,eex,<%=```

### Template
```
<%= $0 %>
```
## eex: Return contents

### Prefixes

```plvs,eex,eexr,<%%```

### Template
```
<%% $0 %>
```
## eex: case

### Prefixes

```plvs,eex,eexcase,<% case```

### Template
```
<% case $1 do %>
  <% $2 -> %>
<% end %>
```
## eex: cond

### Prefixes

```plvs,eex,eexcond,<% cond```

### Template
```
<%= cond do %>
  <% $1 -> %>
    $2
<% end %>
```
## eex: for

### Prefixes

```plvs,eex,eexfor,<% for```

### Template
```
<%= for $2 <- $1 do %>
  $0
<% end %>
```
## eex: if

### Prefixes

```plvs,eex,eexif,<% if```

### Template
```
<%= if $1 do %>
  $0
<% end %>
```
## eex: inline with output

### Prefixes

```plvs,eex,<%```

### Template
```
<% $0 %>
```



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
