build: 
	mix escript.build;
	./app;
clean:
	rm -rf ./build ./app;
