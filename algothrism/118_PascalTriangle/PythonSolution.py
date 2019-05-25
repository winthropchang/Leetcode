# -*- coding=utf8 -*-

def lambdaSolution(level):
    # P => Pascal function
    # i => inputValue
    P=lambda i:(lambda x:x+[[a+b for a,b in zip(x[-1]+[0],[0]+x[-1])]])(P(i-1))if i>1 else[[1]]
    print(P(level))

if __name__ == "__main__":
    lambdaSolution(5)