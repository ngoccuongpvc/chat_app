createdb:
	docker exec db createdb --username=admin --owner=admin chat-app

dropdb:
	docker exec db dropdb chat-app --username=admin

migrate-up:
	migrate -path sql/migration -database "postgresql://admin:admin@localhost:5432/chat-app?sslmode=disable" -verbose up

migrate-down:
	migrate -path sql/migration -database "postgresql://admin:admin@localhost:5432/chat-app?sslmode=disable" -verbose down



.PHONY: createdb dropdb migrate-up migrate-down