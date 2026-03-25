CC=gcc
CFLAGS=-Wall -Wextra -std=c11
TARGET=calculator
SRC=src/main.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
	./$(TARGET)

clean:
	del /f $(TARGET).exe