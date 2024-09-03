EXEC = add_numbers

SRC = add_numbers.cpp

all: $(EXEC)

$(EXEC): $(SRC)
	# Compile the C++ source file into an executable
	g++ -o $(EXEC) $(SRC)

dump: $(EXEC)
	# Disassemble the executable and output the assembly code to a file
	objdump -d $(EXEC) > $(EXEC).asm

clean:
	# Remove the executable and assembly code files
	rm -f $(EXEC) $(EXEC).asm

run: $(EXEC)
	# Run the executable
	./$(EXEC)

