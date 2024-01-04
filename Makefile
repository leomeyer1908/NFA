build-test:
	gcc -g -Wall test.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o prog
