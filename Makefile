.PHONY: all serve clean


all: clean publish serve

publish: akatsuki-tutorial.py
	uv run marimo export html-wasm akatsuki-tutorial.py -o publish --mode edit --no-show-code

serve:
	python -m http.server --directory publish

clean:
	rm -rf publish

edit:
	uv run marimo edit akatsuki-tutorial.py