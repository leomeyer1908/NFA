#include "../NFA.h"

int main() {
    NFA nfa;
    NFA dfa;
    char regex[] = "(\\++\\|)+\\**|\\\\+\\(+\\)";
    printf("Input: %s\n\n", regex);
    int errorResult = createNFAFromRegex(regex, &nfa);
    if (errorResult == -1) {
        printf("Invalid RegEx\n");
        destroyNFA(&nfa);
        return 1;
    } 
    printf("Output (after Thompson's construction):\n");
    printNFA(&nfa);
    eliminateEpisilonNFA(&nfa);
    printf("\n\n\n\n\n");
    printf("Output (after episilon elimination):\n");
    printNFA(&nfa);
    createDFAFromNFA(&nfa, &dfa);
    destroyNFA(&nfa);

    printf("\n\n\n\n\n");
    printf("Output (after powerset construction):\n");
    printNFA(&dfa);

    destroyNFA(&dfa);
    return 0;
}