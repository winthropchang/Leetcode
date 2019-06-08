local function getNode(value, nextNode)
    return {
        val = value,
        next = nextNode
    }
end

local function addTwoNumbers(p, q)
    local n = getNode(0);
    local r = n;
    local c = 0;
    while p or q do
        local a = p and p.val or 0;
        local b = q and q.val or 0;
        p = (p and p.next) and p.next or nil;
        q = (q and q.next) and q.next or nil;
        local sum = a + b + c;
        c = math.floor( sum / 10 );
        n.val = sum % 10;
        if p or q then
            n.next = getNode(c);
            n = n.next;
        end
    end
    if c > 0 then
        n.next = getNode(c);
    end
    return r;
end

local function toLinkedList(array)
    local node = getNode(array[#array]);
    for i = #array - 1, 1, -1 do
        node = getNode(array[i], node);
    end
    return node;
end

local function LinkedListToString(node)
    local str = "[ ";
    while node do
        str = str .. node.val .. (node.next and " -> " or "");
        node = node.next;
    end
    return str .. " ]";
end

-- start tetst
local l1 = toLinkedList({2, 3, 6, 1});
local l2 = toLinkedList({5, 4});
local answer = addTwoNumbers(l1, l2);
print(LinkedListToString(answer));