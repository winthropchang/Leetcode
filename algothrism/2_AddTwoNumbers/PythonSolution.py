# -*- coding=utf8 -*-
# define node class
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

# calculate result
def addTwoNumbers(p, q):
    r = n = ListNode(0);
    c = 0;
    while p or q:
        a = p.val if p else 0;
        b = q.val if q else 0;
        p = p.next if p and p.next else None;
        q = q.next if q and q.next else None;
        # calculate sum
        sVal = c + a + b;
        # if sum bigger than 10 will storage for next term use
        c = sVal//10;
        n.val = sVal%10;
        if p or q:
            n.next = ListNode(c);
            n = n.next;
    # Have residual value,storage to another node
    if c > 0:
        n.next = ListNode(c);
    return r;

def createLinkList(listData):
    head = None;
    result = None;
    for i in range(len(listData)):
        if not head:
            head = ListNode(listData[i]);
            result = head;
        else:
            head.next = ListNode(listData[i]);
            head = head.next;
    return result;

def dump(listNode):
    info = "[ ";
    while listNode:
        info = info + str(listNode.val);
        listNode = listNode.next;
        if listNode:
            info = info + " -> ";
    info = info + " ]";
    print(info);

if __name__ == "__main__":
    l1 = createLinkList([2, 3, 6, 1]);
    l2 = createLinkList([5, 4]);
    solution = addTwoNumbers(l1, l2);
    dump(solution);