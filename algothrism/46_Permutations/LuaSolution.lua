local res = {};

function copy(t)
    local t2 = {};
    for k,v in pairs(t) do
      t2[k] = v;
    end
    return t2;
  end

function dump(tb)
    for key, value in pairs(tb) do
        if type(value) == "table" then
            print(table.concat( value, ", "));
        else
            print("value => ", value);
        end
    end
    print(" ------- ")
end

function contains(target, item)
    for i = 1, #target do
        if target[i] == item then
            return true;
        end
    end
    return false;
end

function backtrack(nums, track)
    if #nums == #track then
        res[#res + 1] = copy(track);
        return;
    end
    local amount =  #nums;
    for i = 1, amount do
        local isContain = contains(track, nums[i]);
        if not isContain then
            track[#track + 1] = nums[i];
            backtrack(nums, track);
            table.remove(track);
        end
    end
end

function permute(nums)
    local track = {};
    backtrack(nums, track);
end

-- Test code
permute({1,2,3,4});
dump(res);