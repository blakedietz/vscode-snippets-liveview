generate:
	make clean;
	make build;
	./app --build=neovim --build=vscode --build=documentation;
build: 
	mix escript.build;
clean:
	rm -rf ./build ./app;
