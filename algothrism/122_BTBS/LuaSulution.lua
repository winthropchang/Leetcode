local function solution(prices)
    local prePrice = nil;
    local maxProfit = 0;
    for _, price in ipairs(prices) do
        if prePrice and price > prePrice then
            maxProfit = maxProfit + (price - prePrice);
        end
        prePrice = price;
    end
    print("max profit is: ", maxProfit);
end
solution({7,1,5,3,6,4})
solution({7,6,4,3,1})