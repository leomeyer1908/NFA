#include "NFA.h"

int main() {
    NFA nfa;
    char regex[] = "a|b";
    int errorResult = createNFAFromRegex(regex, &nfa);
    if (errorResult == -1) {
        printf("Invalid RegEx\n");
        destroyNFA(&nfa);
        return 1;
    } 
    eliminateEpisilonNFA(&nfa);
    printNFA(&nfa);
    destroyNFA(&nfa);
    return 0;
}

