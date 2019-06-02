local function twoSum(nums, target)
    local deviations = {};
    for idx, num in ipairs(nums) do
        local diff = target - num;
        if deviations[diff] then
            return {deviations[diff], idx};
        end
        deviations[num] = idx;
    end
    return nil;
end

local function dump(tb)
    if #tb == 0 then
        print("dump value can't empty!");
        return;
    end
    local str = "[";
    for idx, value in ipairs(tb) do
        str = str .. value ..(next(tb, idx) and ", " or "");
    end
    str = str .. "]"
    print(str);
end

-- start test
local nums = {2, 7, 11, 15};
local target = 9;
local answer = twoSum(nums, target);
dump(answer);