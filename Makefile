AS = arm-linux-gnueabi-as
LD = arm-linux-gnueabi-ld
QEMU = qemu-arm

SRC_DIR = codes
BUILD = build
FILE ?= n01

SRC = $(SRC_DIR)/$(FILE).asm
OBJ = $(BUILD)/$(FILE).o
BIN = $(BUILD)/$(FILE)

all: $(BIN)

$(BUILD):
	mkdir -p $(BUILD)

$(BIN): $(OBJ)
	$(LD) -o $(BIN) $(OBJ)

$(OBJ): $(SRC) | $(BUILD)
	$(AS) -o $(OBJ) $(SRC)

run: $(BIN)
	$(QEMU) ./$(BIN)

clean:
	rm -rf $(BUILD)/

.PHONY: all run clean