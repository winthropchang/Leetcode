local function getAnswer(rowNums)
    local answers = {};
    local solution;
    for i = 1,rowNums do
        solution = {};
        -- Set all list value to 1
        for _=1,i do
            solution[#solution + 1] = 1;
        end
        -- only i is bigger then 2 will execute this loop
        -- Ex: 
        --  i = 0, end is 0 - 1 = -1, loop not execute
        --  i = 1, end is 1 - 1 = 0, loop not execute
        --  i = 2, end is 2 - 1 = 1, loop not execute
        --  i = 3, end is 3 - 1 = 2, loop will execute!
        for j=2,i-1 do
            local preAns = answers[i-1];
            solution[j] = preAns[j-1] + preAns[j];
        end
        answers[#answers + 1] = solution;
    end
    return answers;
end
local function dump(tb)
    if #tb == 0 then
        print("dump value can't empty!");
        return;
    end
    for _,value in ipairs(tb) do
        local str = "[";
        for vk, element in ipairs(value) do
            str = str .. element ..(next(value, vk) and ", " or "");
        end
        str = str .. "]"
        print(str);
    end
end

-- start test
local ROW_NUMS = 5;
local answer = getAnswer(ROW_NUMS);
dump(answer);