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

## Snippet list

| Name | Prefix |
| ---- | ------ |
| Ecto: Schema changeset | plvs,es,esc |
| Ecto: Schema changeset optional attrs | plvs,es,esoa |
| Ecto: Schema changeset required attrs | plvs,es,escra |
| LiveView: @impl Phoenix.LiveComponent | plvs,plv,@impl |
| LiveView: @impl Phoenix.LiveView | plvs,plv,@impl |
| LiveView: New LiveView module | plvs,plv,plvnlvm |
| LiveView: Phoenix.LiveComponent assign helper | plvs,plc,plca,plcah |
| LiveView: Phoenix.LiveComponent call | plvs,plc,plcc |
| LiveView: Phoenix.LiveComponent handle_event | plvs,plc,plche |
| LiveView: Phoenix.LiveComponent mount | plvs,plc,plcm |
| LiveView: Phoenix.LiveComponent preload | plvs,plc,plcp |
| LiveView: Phoenix.LiveComponent render | plvs,plc,plcr |
| LiveView: Phoenix.LiveComponent update | plvs,plc,plcu |
| LiveView: Render slot | plvs,plvrs |
| LiveView: handle_info | plvs,plv,plvhi |
| LiveView: render implementation | plvs,plv,plvr |
| LiveView: socket destructure | plvs,plv,plvsd |
| Phoenix: Component definition | plvs,pc,pcd |
| Phoenix: Context change | plvs,pctx,pctxch |
| Phoenix: Context create | plvs,pctx,pctxcr |
| Phoenix: Context delete | plvs,pctx,pctxd |
| Phoenix: Context get | plvs,pctx,pctxg |
| Phoenix: Context list | plvs,pctx,pctxl |
| Phoenix: Context update | plvs,pctx,pctxu |
| Phoenix: Phoenix.Component.form/1 | plvs,pc,pcf |
| eex: Comment | plvs,eex,eexc,<%# |
| eex: Replace with result | plvs,eex,<%= |
| eex: Return contents | plvs,eex,eexr,<%% |
| eex: case | plvs,eex,eexcase,<% case |
| eex: cond | plvs,eex,eexcond,<% cond |
| eex: for | plvs,eex,eexfor,<% for |
| eex: if | plvs,eex,eexif,<% if |
| eex: inline with output | plvs,eex,<% |

