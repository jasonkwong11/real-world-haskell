module RegisteredUser where
  newtype Username = Username String
  newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber

-- with the type User, we can use pattern matching to
-- accomplish two things:

--1. User is a sum of two constructors,
--UnregisteredUser and RegisteredUser.
-- we can use pattern matchng to dispatch our 
-- function differently depending on which value
-- we get.

-- 2. with the RegisteredUser constructor we see
--that it is a product of two newtypes, Username
--and AccountNumber. We can use pattern matching
-- to break down not only RegisteredUser's 
--contents, but also that of the newtypes if all
-- the constructors are in scope

-- Here's a function to prety print User values:
