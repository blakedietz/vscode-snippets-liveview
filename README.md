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
| LiveView: handle_call | plvs,plv,plvhi,def,def handle_call | [Reference](#liveview-handle_call) |
| LiveView: handle_cast | plvs,plv,plvhi,def,def handle_cast | [Reference](#liveview-handle_cast) |
| LiveView: handle_event | plvs,plv,plvhe,def,def handle_event | [Reference](#liveview-handle_event) |
| LiveView: handle_info | plvs,plv,plvhi,def,def handle_info | [Reference](#liveview-handle_info) |
| LiveView: handle_params | plvs,plv,plvhe,def,def handle_params | [Reference](#liveview-handle_params) |
| LiveView: render implementation | plvs,plv,plvr,def render | [Reference](#liveview-render-implementation) |
| LiveView: socket destructure | plvs,plv,plvsd,socket | [Reference](#liveview-socket-destructure) |
| LiveView: terminate | plvs,plv,plvt,def terminate | [Reference](#liveview-terminate) |
| Phoenix: Component Macros attr/3 | plvs,pc,pcm,pcma,attr | [Reference](#phoenix-component-macros-attr/3) |
| Phoenix: Component Macros embed_templates/2 | plvs,pc,pcm,pcme,pcmet,embed_ | [Reference](#phoenix-component-macros-embed_templates/2) |
| Phoenix: Component Macros sigil_H/2 | plvs,pc,pcm,pcms,pcmsh,~H | [Reference](#phoenix-component-macros-sigil_h/2) |
| Phoenix: Component Macros slot/2 | plvs,pc,pcm,pcms,slot | [Reference](#phoenix-component-macros-slot/2) |
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

<pre>plvs,es,esc</pre>

### Template
<pre>
def changeset(${1:name}, attrs) do
  required_attrs = [$2]
  optional_attrs = [$3]

  ${1:name}
  |> cast(attrs, required_attrs ++ optional_attrs)
  |> validate_required(required_attrs)
end

</pre>
## Ecto: Schema changeset optional attrs

### Prefixes

<pre>plvs,es,esoa</pre>

### Template
<pre>
optional_attrs = [$0]
</pre>
## Ecto: Schema changeset required attrs

### Prefixes

<pre>plvs,es,escra</pre>

### Template
<pre>
required_attrs = [$0]
</pre>
## LiveView: @impl Phoenix.LiveComponent

### Prefixes

<pre>plvs,plv,@impl</pre>

### Template
<pre>
@impl Phoenix.LiveComponent
</pre>
## LiveView: @impl Phoenix.LiveView

### Prefixes

<pre>plvs,plv,@impl</pre>

### Template
<pre>
@impl Phoenix.LiveView
</pre>
## LiveView: New LiveView module

### Prefixes

<pre>plvs,plv,plvnlvm,defmodule</pre>

### Template
<pre>
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
</pre>
## LiveView: Phoenix.LiveComponent assign helper

### Prefixes

<pre>plvs,plc,plca,plcah</pre>

### Template
<pre>
def assign_$1(socket, $1) do
  assign(socket, $1: $1)
end
</pre>
## LiveView: Phoenix.LiveComponent call

### Prefixes

<pre>plvs,plc,plcc</pre>

### Template
<pre>
<.live_component
  module={$1}
  id={$2}
  $0
/>

</pre>
## LiveView: Phoenix.LiveComponent handle_event

### Prefixes

<pre>plvs,plc,plche</pre>

### Template
<pre>
@impl Phoenix.LiveComponent
def handle_event(${1:event}, ${2:unsigned_params}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end
</pre>
## LiveView: Phoenix.LiveComponent mount

### Prefixes

<pre>plvs,plc,plcm</pre>

### Template
<pre>
@impl Phoenix.LiveComponent
def mount(${1:socket}) do
  $0
  {:ok, ${2:socket}}
end

</pre>
## LiveView: Phoenix.LiveComponent preload

### Prefixes

<pre>plvs,plc,plcp</pre>

### Template
<pre>
@impl Phoenix.LiveComponent
def preload(${1:list_of_assigns}) do
  $0
  $1
end

</pre>
## LiveView: Phoenix.LiveComponent render

### Prefixes

<pre>plvs,plc,plcr</pre>

### Template
<pre>
@impl Phoenix.LiveComponent
def render(${1:assigns}) do
  ~H"""
  $0
  """
end

</pre>
## LiveView: Phoenix.LiveComponent update

### Prefixes

<pre>plvs,plc,plcu</pre>

### Template
<pre>
@impl Phoenix.LiveComponent
def update(${1:assigns}, ${2:socket}) do
  $0

  {:ok, socket}
end
</pre>
## LiveView: Phoenix.LiveView mount

### Prefixes

<pre>plvs,plv,plvm,def mount</pre>

### Template
<pre>
@impl Phoenix.LiveView
def mount(${1:params}, ${2:session}, ${3:socket}) do
  ${4:{:noreply, socket}}
end

</pre>
## LiveView: Render slot

### Prefixes

<pre>plvs,plvrs</pre>

### Template
<pre>
<%= render_slot(${1:@inner_block}) %>
</pre>
## LiveView: handle_call

### Prefixes

<pre>plvs,plv,plvhi,def,def handle_call</pre>

### Template
<pre>
@impl Phoenix.LiveView
def handle_call(${1:msg}, ${2:from}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end

</pre>
## LiveView: handle_cast

### Prefixes

<pre>plvs,plv,plvhi,def,def handle_cast</pre>

### Template
<pre>
@impl Phoenix.LiveView
def handle_cast(${1:msg}, ${2:socket}) do
  $0

  ${3:{:noreply, socket}}
end

</pre>
## LiveView: handle_event

### Prefixes

<pre>plvs,plv,plvhe,def,def handle_event</pre>

### Template
<pre>
@impl Phoenix.LiveView
def handle_event(${1:event}, ${2:unsigned_params}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end

</pre>
## LiveView: handle_info

### Prefixes

<pre>plvs,plv,plvhi,def,def handle_info</pre>

### Template
<pre>
@impl Phoenix.LiveView
def handle_info(${1:message}, ${2:socket}) do
  $0

  {:noreply, ${3:socket}}
end
</pre>
## LiveView: handle_params

### Prefixes

<pre>plvs,plv,plvhe,def,def handle_params</pre>

### Template
<pre>
@impl Phoenix.LiveView
def handle_params(${1:event}, ${2:uri}, ${3:socket}) do
  $0

  ${4:{:noreply, socket}}
end

</pre>
## LiveView: render implementation

### Prefixes

<pre>plvs,plv,plvr,def render</pre>

### Template
<pre>
@impl Phoenix.LiveView
def render(${1:assigns}) do
  ~H"""
  $0
  """
end

</pre>
## LiveView: socket destructure

### Prefixes

<pre>plvs,plv,plvsd,socket</pre>

### Template
<pre>
%{ assigns: %{$1} } = $0
</pre>
## LiveView: terminate

### Prefixes

<pre>plvs,plv,plvt,def terminate</pre>

### Template
<pre>
@impl Phoenix.LiveView
def terminate(${1: reason}, ${2:socket}) do
  $3
end

</pre>
## Phoenix: Component Macros attr/3

### Prefixes

<pre>plvs,pc,pcm,pcma,attr</pre>

### Template
<pre>
attr :$1, :$2, required: $3$0

</pre>
## Phoenix: Component Macros embed_templates/2

### Prefixes

<pre>plvs,pc,pcm,pcme,pcmet,embed_</pre>

### Template
<pre>
embed_templates "$1"

</pre>
## Phoenix: Component Macros sigil_H/2

### Prefixes

<pre>plvs,pc,pcm,pcms,pcmsh,~H</pre>

### Template
<pre>
~H"""
$0
"""

</pre>
## Phoenix: Component Macros slot/2

### Prefixes

<pre>plvs,pc,pcm,pcms,slot</pre>

### Template
<pre>
slot :${1:name}, required: $2

</pre>
## Phoenix: Component definition

### Prefixes

<pre>plvs,pc,pcd</pre>

### Template
<pre>
def ${1:component}(${2:assigns}) do
  ~H"""
  $3
  """
end
</pre>
## Phoenix: Context change

### Prefixes

<pre>plvs,pctx,pctxch</pre>

### Template
<pre>
@doc """
Returns an `%Ecto.Changeset{}` for tracking ${1/(.*)/${1:/pascalcase}/} changes.

## Examples

    iex> change_$1(%{field: value})
    %Ecto.Changeset{data: %${1/(.*)/${1:/pascalcase}/}{}}

"""
def change_${1:name}(%${1/(.*)/${1:/pascalcase}/}{} = $1, attrs \\\\ %{} ) do
  ${1/(.*)/${1:/pascalcase}/}.changeset($1, attrs)
end

</pre>
## Phoenix: Context create

### Prefixes

<pre>plvs,pctx,pctxcr</pre>

### Template
<pre>
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

</pre>
## Phoenix: Context delete

### Prefixes

<pre>plvs,pctx,pctxd</pre>

### Template
<pre>
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

</pre>
## Phoenix: Context get

### Prefixes

<pre>plvs,pctx,pctxg</pre>

### Template
<pre>
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

</pre>
## Phoenix: Context list

### Prefixes

<pre>plvs,pctx,pctxl</pre>

### Template
<pre>
@doc """
Returns the list of ${1/(.*)/${1:/pascalcase}/}.

## Examples

    iex> list_$1()
    [%${1/(.*)/${1:/pascalcase}/}{}, ...]

"""
def list_${1:name}s do
  Repo.all(${1/(.*)/${1:/pascalcase}/})
end

</pre>
## Phoenix: Context update

### Prefixes

<pre>plvs,pctx,pctxu</pre>

### Template
<pre>
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

</pre>
## Phoenix: Phoenix.Component.dynamic_tag/1

### Prefixes

<pre>plvs,pc,pcc,pcd,pcdt,<.,<.dynamic_tag,dynamic_tag</pre>

### Template
<pre>
<.dynamic_tag name="$1" type="$2">
  $0
</.dynamic_tag >

</pre>
## Phoenix: Phoenix.Component.form/1

### Prefixes

<pre>plvs,pc,pcf,<.,<.form,form</pre>

### Template
<pre>
<.form
  for={${1:@changeset}}
  let={${2:form}}
  phx-change="${3:validate}"
  phx-submit="${4:submit}"
>
  $0
</.form>

</pre>
## Phoenix: Phoenix.Component.inputs_for/1

### Prefixes

<pre>plvs,pc,pci,pcif,<.,<.inputs_for,inputs_for</pre>

### Template
<pre>
<.inputs_for :let={${1:f_nested}} field={${2:f[:nested]}}>
  $0
<.inputs_for>

</pre>
## Phoenix: Phoenix.Component.intersperse/1

### Prefixes

<pre>plvs,pc,pci,<.,<.intersperse,intersperse</pre>

### Template
<pre>
<.intersperse :let={${1:item}} enum={${2:[$3]}}>
  <:separator>
    $0
  </:separator>
<./intersperse>

</pre>
## Phoenix: Phoenix.Component.link/1

### Prefixes

<pre>plvs,pc,pcl,<.,<.link,link</pre>

### Template
<pre>
<.link $1>
  $0
<./link>

</pre>
## Phoenix: Phoenix.Component.live_file_input/1

### Prefixes

<pre>plvs,pc,pc,pclf,pclfi,<.,<.live_,<.live_file,live_file_input</pre>

### Template
<pre>
<.live_file_input upload={@uploads.$1} />$0

</pre>
## Phoenix: Phoenix.Component.live_img_preview/1

### Prefixes

<pre>plvs,pc,pc,pcli,pclip,<.,<.live_,<.live_img,live_img_preview</pre>

### Template
<pre>
<.live_image_preview entry={$1}$2/>$0

</pre>
## Phoenix: Phoenix.Component.live_title/1

### Prefixes

<pre>plvs,pc,pc,pclt,<.,<.live_,<.live_title,live_title</pre>

### Template
<pre>
<.live_title prefix="${1:"My App"}">
  <%= assigns[$2] || "Welcome" %>
<./live_title>

</pre>
## eex: Comment

### Prefixes

<pre>plvs,eex,eexc,<%#</pre>

### Template
<pre>
<%# $0 %>
</pre>
## eex: Replace with result

### Prefixes

<pre>plvs,eex,<%=</pre>

### Template
<pre>
<%= $0 %>
</pre>
## eex: Return contents

### Prefixes

<pre>plvs,eex,eexr,<%%</pre>

### Template
<pre>
<%% $0 %>
</pre>
## eex: case

### Prefixes

<pre>plvs,eex,eexcase,<% case</pre>

### Template
<pre>
<% case $1 do %>
  <% $2 -> %>
<% end %>
</pre>
## eex: cond

### Prefixes

<pre>plvs,eex,eexcond,<% cond</pre>

### Template
<pre>
<%= cond do %>
  <% $1 -> %>
    $2
<% end %>
</pre>
## eex: for

### Prefixes

<pre>plvs,eex,eexfor,<% for</pre>

### Template
<pre>
<%= for $2 <- $1 do %>
  $0
<% end %>
</pre>
## eex: if

### Prefixes

<pre>plvs,eex,eexif,<% if</pre>

### Template
<pre>
<%= if $1 do %>
  $0
<% end %>
</pre>
## eex: inline with output

### Prefixes

<pre>plvs,eex,<%</pre>

### Template
<pre>
<% $0 %>
</pre>

