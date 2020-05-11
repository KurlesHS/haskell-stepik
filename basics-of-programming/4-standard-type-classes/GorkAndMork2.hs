class KnownToGork a where
   stomp :: a -> a
   doesEnrageGork :: a -> Bool

class KnownToMork a where
   stab :: a -> a
   doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
   stompOrStab :: a -> a
   stompOrStab a = helper (doesEnrageMork a, doesEnrageGork a) a where 
    helper (True, True) = stomp . stab
    helper (True, _   ) = stomp
    helper (_   , True) = stab
    helper _            = id