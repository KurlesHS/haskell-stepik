class KnownToGork a where
   stomp :: a -> a
   doesEnrageGork :: a -> Bool

class KnownToMork a where
   stab :: a -> a
   doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
   stompOrStab :: a -> a
   stompOrStab a = impl a where 
    morkEnrage = doesEnrageMork a
    gorkEnrage = doesEnrageGork a
    impl a | gorkEnrage && morkEnrage = stomp (stab a)
           | morkEnrage = stomp a
           | gorkEnrage = stab a
           | otherwise = a