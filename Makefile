# These are variables. We usually define CC, CCLINK, CFLAGS, and OBJS
CC=gcc
CCLINK=$(CC) # Read variable CC using $(CC)
CFLAGS=-g -Wall -std=c99
OBJS=ransom.o
EXEC=prog.exe
RM=rm -rf *.o *.exe

# The first rule is invoked by default.
# We can also invoke it (or any other rule) manually with "make all" - 
# note that "all" is the rule's name!


$(EXEC): $(OBJS)
	$(CCLINK) -g $(OBJS) -o $(EXEC)

# Full rule syntax with custom Shell commands

ransom.o: ransom.c 
	$(CC) $(CFLAGS) -c ransom.c

# Clean .o and .exe files
clean:
	$(RM)