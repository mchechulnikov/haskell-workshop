module Demo where

fibonacci :: Integer -> Integer
fibonacci 0         = 0
fibonacci 1         = 1
fibonacci (-1)      = 1
fibonacci n | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
            | mod n 2 == 0 = (-1) * (fibonacci ((-n) - 1) + fibonacci ((-n) - 2))
            | mod n 2 /= 0 = (fibonacci ((-n) - 1) + fibonacci ((-n) - 2))