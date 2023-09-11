build:
	docker build -t ghcr.io/uofudelphi/git-workshop:latest .

push:
	docker push ghcr.io/uofudelphi/git-workshop:latest

run:
	docker run --rm -ti ghcr.io/uofudelphi/git-workshop:latest