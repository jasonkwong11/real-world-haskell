
pal xs =
  case xs == reverse xs of
    True -> "yes"
    False -> "no"

-- The above can also be written with a where clause
-- in cases where you might need to resuse the y:

pal2 xs =
  case y of
    True -> "yes"
    False -> "no"
  where y = xs == reverse xs