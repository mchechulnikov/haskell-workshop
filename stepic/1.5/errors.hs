module Demo where
    
factorial' 0 = 1
factorial' n = if n < 0 then error "arg must be >= 0" else n * factorial' (n - 1)