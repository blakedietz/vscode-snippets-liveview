# vscode-liveview-snippets

An escript project to generate Phoenix LiveView snippets.

## Building locally

```bash
# Clone the repo
# cd into repo directory
mix deps.get
mix escript.build
./app
# copy the contents of the json file
# on macOS
cat snippets.json | pbcopy
```

## Add the snippets to your project
