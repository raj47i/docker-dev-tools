build:
	docker build -t raj47i-postgres --rm=true .

debug:
	docker run -i -t --entrypoint=sh raj47i-postgres

init:
	docker run -itP raj47i-postgres init

run:
	docker run -i -P raj47i-postgres
