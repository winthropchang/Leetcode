#!/usr/bin/env python
# coding=UTF-8

def solution(prices):
    '''
    My strategy is very simple.
    If price is higher than previous date.
    The price diff is profit.
    Add all profit is max profit.
    '''
    prePrice = None
    maxProfit = 0
    for price in prices:
        if prePrice and price > prePrice:
            maxProfit = maxProfit + (price - prePrice)
        prePrice = price
    print("max profit is: ", maxProfit);
    
if __name__ == "__main__":
    # answer is 7
    # Buy on day 2 (price = 1) and 
    # sell on day 3 (price = 5), profit = 5-1 = 4.
    solution([7,1,5,3,6,4])
    solution([7,6,4,3,1])