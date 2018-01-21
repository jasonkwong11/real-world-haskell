-- here is a sum type called WherePenguinsLive:

data WherePenguinsLive =
    Galapagos
  | Antarctica
  | Australia
  | SouthAfrica
  | SouthAmerica
  deriving (Eq, Show)

-- and a product type called Penguin. Right now, you can
-- think of Penguin as a type with only one value, Peng,
-- and that value is a sort of box that contains
-- WherePenguinsLive value

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

-- given these datatypes, we will write a couple functions
-- for processing the data:

-- Is it south Africa? If so, return true:
isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica Galapagos = False
isSouthAfrica Antarctica = False
isSouthAfrica Australia = False
isSouthAfrica SouthAmerica = False

-- ^^ this is redudant, we can use _ to indicate an
-- unconditional match on a value we don't care about.
-- The following is better, more concise, and does the same thing:

isSouthAfrica2 :: WherePenguinsLive -> Bool
isSouthAfrica2 SouthAfrica = True
isSouthAfrica2 _           = False 

-- we can also use pattern matching to unpack Penguin values
-- at the WherePenguinsLive value it contains:

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive :: (Peng whereitlives) = whereitlives

humboldt = Peng SouthAmerica
gentoo = Peng Antarctica
macaroni = Peng Antarctica
little = Peng Australia
galapagos = Peng Galapagos

-- another example: we'll expose the contents of
-- Peng and match on what WherePenguinLives value
--we care about in one pattern match:

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False

antarcticPenguin :: Penguin -> Bool
antarcticPenguin (Peng Antarctica) = True
antarcticPenguin _                 = False


-- in this final function, the || operator
-- is an 'or' function, which will return True
-- if either value is True

antarcticOrGalapagos :: Penguin -> Bool
antarcticOrGalapagos p =
  (galapagosPenguin p) || (antarcticPenguin p)

-- Note that we're using pattern matchign to accomplish
-- two things here. We're using it to unpack the 
-- Penguin data. We're also specifying which
-- WherePenguinsLive value we want to match on













