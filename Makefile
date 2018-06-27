
build:
	npm run build
	bundle exec jekyll build

clean:
	rm -rf _site \
	  _data/candidates \
	  _data/committees \
	  _data/contributions \
	  _data/referendum_opposing \
	  _data/referendum_supporting

production:
	npm run dist
	JEKYLL_ENV=production bundle exec jekyll build

serve:
	npm run watch &
	bundle exec jekyll serve --incremental

test:
	npm test
	bundle exec htmlproofer _site --url-swap /odca-jekyll: --check-html --disable-external
	bundle exec scss-lint _sass
