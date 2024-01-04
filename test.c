#include "NFA.h"

int main() {
    NFA nfa;
    NFA dfa;
    char regex[] = "(a|b)+(a|c|b)*";
    int errorResult = createNFAFromRegex(regex, &nfa);
    if (errorResult == -1) {
        printf("Invalid RegEx\n");
        destroyNFA(&nfa);
        return 1;
    } 
    eliminateEpisilonNFA(&nfa);
    createDFAFromNFA(&nfa, &dfa);
    destroyNFA(&nfa);

    printNFA(&dfa);

    destroyNFA(&dfa);
    return 0;
}

