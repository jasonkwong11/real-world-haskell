
if x + 1 == 1 then "AWESOME" else "wut"

--we can rewrite this as a case expression, matching
-- on the constructors of Bool:

funcZ x =
  case x + 1 == 1 of
    True -> "AWESOME"
    False -> "wut"

