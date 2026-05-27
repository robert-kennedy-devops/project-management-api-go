.PHONY: run test cover docker-up docker-down

run:
	go run ./cmd/api

test:
	go test ./...

cover:
	go test ./... -coverprofile=coverage.out
	go tool cover -html=coverage.out

docker-up:
	docker compose up --build

docker-down:
	docker compose down
