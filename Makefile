.PHONY: all serve clean


all: clean publish serve

publish: akatsuki-tutorial.py
	mkdir publish
	uv run marimo export html-wasm akatsuki-tutorial.py -o publish/live --mode edit
	cp frozen.html publish/index.html	
	

serve:
	python -m http.server --directory publish

clean:
	rm -rf publish

edit:
	uv run marimo edit akatsuki-tutorial.py