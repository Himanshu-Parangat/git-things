APP_NAME=greet
BIN_DIR=bin

.PHONY: build run clean

.DEFAULT_GOAL := help  

help:
	@echo -e "\nAvailable targets:"
	@echo -e "  make build    - Compile the Go program"
	@echo -e "  make run      - Build and run the program"
	@echo -e "  make clean    - Remove built files"
	@echo -e "  make help     - Show this help message\n"

build:
	@echo -e "\nEnsure the $(BIN_DIR) directory"
	mkdir -p $(BIN_DIR)
	@echo -e "\nBuilding the binary"
	go build -o $(BIN_DIR)/$(APP_NAME) main.go

run: build
	./$(BIN_DIR)/$(APP_NAME)

clean:
	@echo -e "\nRemoving $(BIN_DIR)"
	rm -rf $(BIN_DIR)
