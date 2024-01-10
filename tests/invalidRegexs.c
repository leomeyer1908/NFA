#include "../NFA.h"

int main() {
    char* arrayOfInvalidRegexs[] = {
        "",
        "a+((a + b)|d",
        "(a+a",
        "()+a",
        "(|a",
        "(+a",
        "(*+a",
        "(",
        ")",
        "(a)(a)",
        "(a)\\+",
        "(a)a",
        "+a",
        "(a+)",
        "a++a",
        "a+|a",
        "a+*",
        "a+",
        "|a",
        "(a|)",
        "a|+a",
        "a||a",
        "a|*",
        "a|",
        "*+a",
        "a*(a)",
        "a*\\+",
        "a*a",
        "\\a",
        "\\ . ",
        "\\+(a)",
        "\\|\\(",
        "\\)a",
        "a(a)",
        "a\\*",
        "ab",
        NULL
    };
    for (int i = 0; arrayOfInvalidRegexs[i] != NULL; i++) {
        printf("Current RegEx: \"%s\",", arrayOfInvalidRegexs[i]);
        NFA nfa;
        int errorResult = createNFAFromRegex(arrayOfInvalidRegexs[i], &nfa);
        if (errorResult == -1) {
            printf(" result: Invalid RegEx.\n");
        }
        else {
            printf(" result: Valid RegEx (Should not happen).\n");
        }
    }
    return 0;
}