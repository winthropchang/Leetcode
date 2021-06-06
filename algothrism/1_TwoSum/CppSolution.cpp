#include <stdio.h>
#include <stdlib.h>
#include <map>

using namespace std;

// 解答的结构
struct Solution
{
    int start;
    int end;
};

Solution getSolution(int* data, int amount, int target)
{
    Solution solution = {-1, -1};
    if(amount == 0){
        return solution;
    }
    map<int, int> diffKeyMap;
    map<int,int>::iterator it;
    int* endPoint = data + amount;
    int counter = 0;
    while(data < endPoint){
        int numDiff = target - *data;
        if(numDiff > 0){
            // Find num diff in map, that's mean current value add old value is target number!
            // We find it!
            it = diffKeyMap.find(*data);
            if(diffKeyMap.find(*data) != diffKeyMap.end()){
                solution.start = it->second;
                solution.end = counter;
                return solution;
            }
            diffKeyMap[numDiff] = counter;
        }
        data++;
        counter++;
    }

    return solution;
}

int main(void){
    int datas[] = {2,5,11,15,4};
    // int datas[] = {2,7,11,15};
    int amount = sizeof(datas) / sizeof(datas[0]);
    int target = 9;
    Solution solution = getSolution(&datas[0], amount, target);
    if(solution.start >= 0 && solution.end >= 0){
        printf("%d add %d is %d\n", datas[solution.start], datas[solution.end], target);
    }else{
        printf("No solution, can not find two number add is %d\n", target);
    }
    
}