build:
	gcc -g -Wall test.c NFA.c regexToNFA.c eliminateEpisilonNFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o prog
