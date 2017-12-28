data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun

-- day of week and numerical day of month

data Date =
  Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon    = True
  (==) Tue Tue    = True
  (==) Weds Weds  = True
  (==) Thu Thu    = True
  (==) Fri Fri    = True
  (==) Sat Sat    = True
  (==) Sun Sun    = True
  (==) _ _        = False


instance Eq Date where
  (==) (Date weekday dayOfMonth)
    (Date weekday1 dayOfMonth1) =
    weekday == weekday1 && dayOfMonth == dayOfMonth1

-- polymorphic parameters such as Identity below:
-- we'll sometimes need to require our argument to
-- provide some typeclass instances for us in order
-- to write an instance for the data containing
-- them:

data Identity a =
  Identity a

--  instance Eq (Identity b) where
--   (==) (Identity c) (Identity c1) = c == c1


instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v1) = v == v1

