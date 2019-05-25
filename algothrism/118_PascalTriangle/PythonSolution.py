# -*- coding=utf8 -*-

def lambdaSolution(numRows):
    # P => Pascal function
    # i => inputValue
    P=lambda i:(lambda x:x+[[a+b for a,b in zip(x[-1]+[0],[0]+x[-1])]])(P(i-1))if i>1 else[[1]]
    return P(numRows)

def solution(numRows):
    solutions = []
    for i in range(numRows):
        # make all item value is 1
        answer = [1 for num in range(i+1)] 
        # Because i start f rom 0
        # So j loop will run when i bigger then 1
        for j in range(1,i):
            preAnswer = solutions[i-1]
            answer[j] = preAnswer[j-1] + preAnswer[j]
        solutions.append(answer)

    return solutions

if __name__ == "__main__":
    numRows = 10
    lambdaAnswer = lambdaSolution(numRows)
    answer = solution(numRows)
    
    print(lambdaAnswer)
    print(answer)
