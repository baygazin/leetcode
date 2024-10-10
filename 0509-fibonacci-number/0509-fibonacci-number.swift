class Solution {
    func fib(_ n: Int) -> Int {
        guard n != 0 else { return 0 }
        guard n != 1 else { return 1 }
        
        return fib(n-1) + fib(n-2)
    }
}