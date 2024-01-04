This repository contains my implementation of an NFA and some functions related to it.
Functions include: converting a RegEx to an NFA, converting an NFA to a DFA, removing
episilon's from NFA, and printing the NFA. The algorithm's used to achieve this are
Thompson's construction, episilon elimination, and powerset construction.

Files Breakdown:
NFA.h is the header file for the NFA and NFA Node data structure, and all 
functions associated with them. 
NFA.c contains the implementation for general functions for the NFA and 
NFA Node data structures.
regexToNFA.c contains the implementation for the RegEx related functions
for the NFA, which are the createNFAFromRegex() and detectErrorRegEx()
functions.
eliminateEpisilonNFA.c contains the implementation for an episilon elimination
algorithm on the eliminateEpisilonNFA() function.
nfaToDFA.c contains an implementation for the powerset construction algorithm
to convert an NFA to a DFA. The function that does this is createDFAFromNFA().

Tests:
All tests have been manually verified to work for after DFA has been created.
Most tests were also manually verified to work for all intermediary steps (RegEx to NFA
and episilon elimination), but some tests were assumed to be correct due to the DFA
being correct. Each test tried to capture different sets of all possible combinations that
could potentially be entered by the user for the regular expression.