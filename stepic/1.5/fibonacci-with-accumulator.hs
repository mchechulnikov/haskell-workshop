module Demo where
    
{-# LANGUAGE BangPatterns #-}
fibonacci :: Integer -> Integer
fibonacci 0         = 0
fibonacci 1         = 1
fibonacci (-1)      = 1
fibonacci n | n > 0 = go n (0,1)
            | mod n 2 == 0 = (-1) * (go (-n) (0,1))
            | mod n 2 /= 0 = go (-n) (0,1)

go !n (!a, !b)
    | n == 0    = a
    | otherwise = go (n - 1) (b, a + b)

{-
int fib(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;

    var a = 0;
    var b = 1;

    var i = 2;
    while (i <= n) {
        var f = b + a;
        a = b;
        b = f;
        i++;
    }
    return b;
}
-}