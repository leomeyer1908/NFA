build:
	gcc -g -Wall test.c NFA.c regexToNFA.c DataStructures/HashMap.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/Stack.c -o prog
