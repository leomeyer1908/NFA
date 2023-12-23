#include "NFA.h"

int main() {
    NFA nfa;
    char regex[] = "a+a";
    int errorResult = createNFAFromRegex(regex, &nfa);
    if (errorResult == -1) {
        printf("Invalid RegEx\n");
    } 
    else {
        printNFA(&nfa);
    }
    destroyNFA(&nfa);
    return 0;
}

