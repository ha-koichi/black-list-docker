build:
	docker-compose exec app yarn build

gen:
	docker-compose exec app yarn generate

deploy:
	docker-compose exec app yarn generate
	firebase deploy