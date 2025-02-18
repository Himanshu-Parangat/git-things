APP_NAME=greet
BIN_DIR=bin

.PHONY: build run clean

.DEFAULT_GOAL := help  

help:
	@printf "\nAvailable targets:\n"
	@printf "  make build    - Compile the Go program\n"
	@printf "  make run      - Build and run the program\n"
	@printf "  make clean    - Remove built files\n"
	@printf "  make help     - Show this help message\n\n"

build:
	@printf "\nEnsure the %s directory\n" "$(BIN_DIR)"
	mkdir -p $(BIN_DIR)
	@printf "\nBuilding the binary\n"
	go build -o $(BIN_DIR)/$(APP_NAME) main.go

run: build
	./$(BIN_DIR)/$(APP_NAME)

clean:
	@printf "\nRemoving %s\n" "$(BIN_DIR)"
	rm -rf $(BIN_DIR)
