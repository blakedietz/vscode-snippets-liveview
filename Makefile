generate:
	make clean;
	make build;
	./app --build=neovim --build=vscode --build=documentation;
publish:
	make build
	cd ./build; 
	./vsce package;
	./vsce publish;
build: 
	mix escript.build;
clean:
	rm -rf ./build ./app;
