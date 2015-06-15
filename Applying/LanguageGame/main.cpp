#include <iostream>
#include <cstdio>
#include <string>
#include <stdio.h>
#include <string.h>

using namespace std;

int main()
{
    string language, word;
    int numberLang = 0;
    bool isInLanguage = true;

    cin>>language;
    cin>>word;
    numberLang = language.length()/3;

    char inputWord[word.length()];
    strcpy(inputWord, word.c_str());

    int index = 0;
    int numberOfLetters = 1;

    int j=1;
    while(inputWord[j-1]== inputWord[j] && j<word.length()) {
        numberOfLetters ++;
        j++;
    }

    if(word.length()%numberOfLetters != 0) {
        printf("no\n");
        return 0;
    }

    if (numberOfLetters == 1) {
        for(int i=1; i<word.length(); i++) {
            if(inputWord[i-1] == inputWord[i]) {
                printf("no\n");
                return 0;
            }
        }
    }


    for(int i=1; i<numberLang; i++) {
        for(int k=1;k<numberOfLetters; k++) {
            if(inputWord[k-1+numberOfLetters*(i-1)]== inputWord[k+numberOfLetters*(i-1)]) {

            } else {
                isInLanguage = false;
                printf("no\n");
                return 0;
            }
        }
    }

    printf("yes\n");
    return 0;
}
