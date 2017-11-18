module Demo where
    
factorial' 0 = 1
factorial' n | n < 0 = error "arg must be >= 0"
             | n > 0 = n * factorial' (n - 1)