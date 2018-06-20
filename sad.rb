def is_a_valid_email?(email)
  (email =~/\A[^@\s]+@[^@\s]+\z/)
end

a = is_a_valid_email?("abc@a.com")
 puts a