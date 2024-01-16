#!/bin/bash

make all
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi


./allRegexCombinationsNoStarTest > allRegexCombinationsNoStar.tmp
if diff allRegexCombinationsNoStar.tmp tests/allRegexCombinationsNoStar.out > /dev/null; then
    echo "allRegexCombinationsNoStar test passed!"
else
    echo "allRegexCombinationsNoStar test failed!"
fi
rm allRegexCombinationsNoStar.tmp

./allRegexCombinationsWithParenthesisTest > allRegexCombinationsWithParenthesis.tmp
if diff allRegexCombinationsWithParenthesis.tmp tests/allRegexCombinationsWithParenthesis.out > /dev/null; then
    echo "allRegexCombinationsWithParenthesis test passed!"
else
    echo "allRegexCombinationsWithParenthesis test failed!"
fi
rm allRegexCombinationsWithParenthesis.tmp

./allRegexCombinationsWithStarTest > allRegexCombinationsWithStar.tmp
if diff allRegexCombinationsWithStar.tmp tests/allRegexCombinationsWithStar.out > /dev/null; then
    echo "allRegexCombinationsWithStar test passed!"
else
    echo "allRegexCombinationsWithStar test failed!"
fi
rm allRegexCombinationsWithStar.tmp

./invalidRegexsTest > invalidRegexs.tmp
if diff invalidRegexs.tmp tests/invalidRegexs.out > /dev/null; then
    echo "invalidRegexs test passed!"
else
    echo "invalidRegexs test failed!"
fi
rm invalidRegexs.tmp

./nestedParenthesesTest > nestedParenthesesTest.tmp
if diff nestedParenthesesTest.tmp tests/nestedParenthesesTest.out > /dev/null; then
    echo "nestedParenthesesTest test passed!"
else
    echo "nestedParenthesesTest test failed!"
fi
rm nestedParenthesesTest.tmp

./sameTransitionCharTest > sameTransitionCharTest.tmp
if diff sameTransitionCharTest.tmp tests/sameTransitionCharTest.out > /dev/null; then
    echo "sameTransitionCharTest test passed!"
else
    echo "sameTransitionCharTest test failed!"
fi
rm sameTransitionCharTest.tmp

./simpleTest > simpleTest.tmp
if diff simpleTest.tmp tests/simpleTest.out > /dev/null; then
    echo "simpleTest test passed!"
else
    echo "simpleTest test failed!"
fi
rm simpleTest.tmp

./specialCharsTest > specialChars.tmp
if diff specialChars.tmp tests/specialChars.out > /dev/null; then
    echo "specialChars test passed!"
else
    echo "specialChars test failed!"
fi
rm specialChars.tmp

./twoCharsTest > twoCharsTest.tmp
if diff twoCharsTest.tmp tests/twoCharsTest.out > /dev/null; then
    echo "twoCharsTest test passed!"
else
    echo "twoCharsTest test failed!"
fi
rm twoCharsTest.tmp


make clean