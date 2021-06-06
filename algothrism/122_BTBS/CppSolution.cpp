#include <stdio.h>
#include <stdlib.h>
#include <vector>

using namespace std;

int getSolutionByPointerArray(int* prices, int amount){
    if(amount == 0){
        return 0;
    }
    int maxProfit = 0;
    int* endPoint = prices + amount;
    while(++prices < endPoint){
        if(*prices > *(prices - 1)){
            maxProfit += *prices - *(prices - 1);
        }
    }
    return maxProfit;
}

int getSolutionByVector(vector<int>& prices){
    int amount = prices.size();
    if(amount == 0){
        return 0;
    }
    int maxProfit = 0;
    for (int i = 1; i < amount; i++)
    {
        if(prices[i] > prices[i - 1]){
            maxProfit += prices[i] - prices[i - 1];
        }
    }
    return maxProfit;
}

// pass vector ad pointer array
int getSolutionByVectorPointer(vector<int>* prices){
    int amount = prices->size();
    if(amount == 0){
        return 0;
    }
    int maxProfit = 0;
    for (int i = 1; i < amount; i++)
    {
        if((*prices)[i] > (*prices)[i - 1]){
            maxProfit += ((*prices)[i] - (*prices)[i - 1]);
        }
    }
    return maxProfit;
}

int main(void){
    
    int input[] = {7,1,5,3,6,4};// This will return 7 
    // int input[] = {7,6,4,3,1};// This will return 0

    int n = sizeof(input) / sizeof(input[0]); 
    vector<int> prices(input, input + n);

    // printf("result => %d",getSolutionByVector(prices));
    // printf("result => %d",getSolutionByVectorPointer(&prices));
    printf("result => %d",getSolutionByPointerArray(&input[0], n));
}