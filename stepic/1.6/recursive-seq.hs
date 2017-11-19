module Demo where

seqA :: Integer -> Integer
seqA n
  | n >= 0 = let
      helper r3 r2 r1 0 = r1
      helper r3 r2 r1 1 = r2
      helper r3 r2 r1 2 = r3
      helper r3 r2 r1 n = helper (r3 + r2 - 2 * r1) r3 r2  (n - 1)
    in helper 3 2 1 n
  | otherwise = error "arg must be >= 0"