class Printable a where
  toString :: a -> String

instance Printable Bool where
  toString a = if a then "true" else "false"
  
instance Printable () where
  toString a = "unit type"

instance  (Printable a, Printable b) => Printable (a,b) where
  toString (a,b) = "("++ toString a ++"," ++ toString b ++ ")"