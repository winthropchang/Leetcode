# coding=utf8

def solution(prices):
    minIdx = 1
    maxIdx = 1
    maxProfix = 0
    for i in range(2, len(prices)):
        if prices[i] > prices[minIdx]:
            priceDiff = prices[i] - prices[minIdx]
            if maxProfix < priceDiff:
                maxProfix = priceDiff
                maxIdx = i
        else:
            minIdx = i
    if minIdx < maxIdx:
        return [minIdx, maxIdx, maxProfix]
    return None

def test(prices):
    result = solution(prices)
    if result:
        print("Buy in " + str(result[0] + 1) + " day")
        print("Sell in " + str(result[1] + 1) + " day")
        print("Max profix is " + str(result[2]))
        print(" ******************* ")
    else:
        print("No solution!")

if __name__ == "__main__":
    test([7,1,5,3,6,4])
    test([7,6,4,3,1])