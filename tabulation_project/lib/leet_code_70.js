// Work through this problem on https://leetcode.com/problems/climbing-stairs/ and use the specs given there.
// Feel free to use this file for scratch work.
//fib 0 = 1 1 = 1 
function climbStairs(n) {
    table = new Array(n + 1);
    table[0] = 1;
    table[1] = 1;
    for (let i = 2; i < table.length; i++) {
        table[i] = table[i - 1] + table[i - 2];
    }
    return table[n];
}


console.log(climbStairs(2));