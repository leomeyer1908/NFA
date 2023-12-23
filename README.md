This repository contains my implementation of an NFA and some functions related to it.
Functions include: converting a RegEx to an NFA, converting an NFA to a DFA, removing
episilon's from NFA, and printing the NFA.

Files Breakdown:
NFA.h is the header file for the NFA and NFA Node data structure, and all 
functions associated with them. 
NFA.c contains the implementation for general functions for the NFA and 
NFA Node data structures.
regexToNFA.c contains the implementation for the RegEx related functions
for the NFA, which are the createNFAFromRegex() and detectErrorRegEx()
functions.