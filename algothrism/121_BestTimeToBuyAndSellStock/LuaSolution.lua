function Solution(prices)
    local minIdx = 1;
    local maxIdx = 1;
    local maxProfix = 0;
    for i = 2, #prices do
        if prices[i] > prices[minIdx] then
            local priceDiff = prices[i] - prices[minIdx];
            if maxProfix < priceDiff then
                maxProfix = priceDiff
                maxIdx = i
            end
        else
            minIdx = i;
        end
    end
    if minIdx < maxIdx then
        return {
            buy = minIdx,
            sell = maxIdx,
            profix = maxProfix
        }
    end
    return nil;
end

function test(prices)
    local result = Solution(prices);
    if result then
        print("Buy in " .. result.buy .. " day");
        print("Sell in " .. result.sell .. " day");
        print("Max profix is " .. result.profix);
        print(" ******************* ")
    else
        print("No solution");
    end
end

test({7,1,5,3,6,4})
test({7,6,4,3,1})