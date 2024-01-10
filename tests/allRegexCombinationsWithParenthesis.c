#include "../NFA.h"

int main() {
    NFA nfa;
    NFA dfa;
    char regex[] = "(a)*|((b)|c)|(d|(e))+((f*|g))|(h|i*)*|(j|k)*+(l|m)+(n|o)*|(p+q)|(r+s)+(t|u)*+(v+w)|(x+y*)*|(z*+0)*+((1+2))+(3+(4))*+((5)+6)*|(7)";
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