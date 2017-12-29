data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Show, Eq)
-- notice how Ord is removed from deriving (Ord, Show, Eq)

instance Ord DayOfWeek where
  compare Fri Fri   = EQ
  compare Fri _     = GT
  compare _ Fri     = LT
  compare _ _       = EQ

