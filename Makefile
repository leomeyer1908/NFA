runAll: runAllRegexCombinationsNoStarTest runAllRegexCombinationsWithParenthesisTest runAllRegexCombinationsWithStarTest runInvalidRegexsTest runNestedParenthesesTest runSameTransitionCharTest runSimpleTest runSpecialCharsTest runTwoCharsTest

runAllRegexCombinationsNoStarTest: buildAllRegexCombinationsNoStarTest
	./allRegexCombinationsNoStarTest

runAllRegexCombinationsWithParenthesisTest: buildAllRegexCombinationsWithParenthesisTest
	./allRegexCombinationsWithParenthesisTest

runAllRegexCombinationsWithStarTest: buildAllRegexCombinationsWithStarTest
	./allRegexCombinationsWithStarTest

runInvalidRegexsTest: buildInvalidRegexsTest
	./invalidRegexsTest

runNestedParenthesesTest: buildNestedParenthesesTest
	./nestedParenthesesTest

runSameTransitionCharTest: buildSameTransitionCharTest
	./sameTransitionCharTest

runSimpleTest: buildSimpleTest
	./simpleTest

runSpecialCharsTest: buildSpecialCharsTest
	./specialCharsTest

runTwoCharsTest: buildTwoCharsTest
	./twoCharsTest

buildAll: buildAllRegexCombinationsNoStarTest buildAllRegexCombinationsWithParenthesisTest buildAllRegexCombinationsWithStarTest buildInvalidRegexsTest buildNestedParenthesesTest buildSameTransitionCharTest buildSimpleTest buildSpecialCharsTest buildTwoCharsTest

buildAllRegexCombinationsNoStarTest:
	gcc -g -Wall tests/allRegexCombinationsNoStar.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o allRegexCombinationsNoStarTest

buildAllRegexCombinationsWithParenthesisTest:
	gcc -g -Wall tests/allRegexCombinationsWithParenthesis.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o allRegexCombinationsWithParenthesisTest

buildAllRegexCombinationsWithStarTest:
	gcc -g -Wall tests/allRegexCombinationsWithStar.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o allRegexCombinationsWithStarTest

buildInvalidRegexsTest:
	gcc -g -Wall tests/invalidRegexs.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o invalidRegexsTest

buildNestedParenthesesTest:
	gcc -g -Wall tests/nestedParenthesesTest.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o nestedParenthesesTest

buildSameTransitionCharTest:
	gcc -g -Wall tests/sameTransitionCharTest.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o sameTransitionCharTest

buildSimpleTest:
	gcc -g -Wall tests/simpleTest.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o simpleTest

buildSpecialCharsTest:
	gcc -g -Wall tests/specialChars.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o specialCharsTest

buildTwoCharsTest:
	gcc -g -Wall tests/twoCharsTest.c NFA.c regexToNFA.c eliminateEpisilonNFA.c nfaToDFA.c DataStructures/HashMap.c DataStructures/HashSet.c DataStructures/LinkedList.c DataStructures/Node.c DataStructures/DoublyNode.c DataStructures/Stack.c -o twoCharsTest

clean:
	rm -rf allRegexCombinationsNoStarTest allRegexCombinationsWithParenthesisTest allRegexCombinationsWithStarTest invalidRegexsTest nestedParenthesesTest sameTransitionCharTest simpleTest specialCharsTest twoCharsTest prog allRegexCombinationsNoStarTest.dSYM allRegexCombinationsWithParenthesisTest.dSYM allRegexCombinationsWithStarTest.dSYM invalidRegexsTest.dSYM nestedParenthesesTest.dSYM sameTransitionCharTest.dSYM simpleTest.dSYM specialCharsTest.dSYM twoCharsTest.dSYM prog.dSYM