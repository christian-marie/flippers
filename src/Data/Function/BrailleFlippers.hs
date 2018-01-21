-- | This module allows to to rearrange up to four function arguments
--  in any order using a simple naming conventions. In the flippers below the
-- resulting arguments order is encoded using columns of dots read from left to
-- right. The number of stacked dots in a column represents the index of the
-- argument that will be passed at that position.
--
-- For example @(⣄) f a b@ will pass the second argument @b@ as the first
-- argument to @f@ and the first argument @a@ as the second argument.
--
-- @(⣠)@, @(⣠⡆)@ and @(⣠⣾)@ are the identities for two, three and four argument
-- functions respectively, i.e. they pass the arguments in the same order,
-- whereas @(⣄)@ @(⣦⡀)@ @(⣷⣄)@ reverses the order of arguments for two, three
-- and four argument functions.
module Data.Function.BrailleFlippers where

(⣠) :: (a -> b -> z) -> a -> b -> z
(⣠) f a b = f a b

(⣄) :: (a -> b -> z) -> b -> a -> z
(⣄) f b a = f a b

(⣠⡆) :: (a -> b -> c -> z) -> a -> b -> c -> z
(⣠⡆) f a b c = f a b c

(⣄⡆) :: (a -> b -> c -> z) -> b -> a -> c -> z
(⣄⡆) f b a c = f a b c

(⣦⡀) :: (a -> b -> c -> z) -> c -> b -> a -> z
(⣦⡀) f c b a = f a b c

(⣴⡀) :: (a -> b -> c -> z) -> b -> c -> a -> z
(⣴⡀) f b c a = f a b c

(⣆⡄) :: (a -> b -> c -> z) -> c -> a -> b -> z
(⣆⡄) f c a b = f a b c

(⣰⡄) :: (a -> b -> c -> z) -> a -> c -> b -> z
(⣰⡄) f a c b = f a b c

(⣠⣾) :: (a -> b -> c -> d -> z) -> a -> b -> c -> d -> z
(⣠⣾) f a b c d = f a b c d

(⣄⣾) :: (a -> b -> c -> d -> z) -> b -> a -> c -> d -> z
(⣄⣾) f b a c d = f a b c d

(⣦⣸) :: (a -> b -> c -> d -> z) -> c -> b -> a -> d -> z
(⣦⣸) f c b a d = f a b c d

(⣴⣸) :: (a -> b -> c -> d -> z) -> b -> c -> a -> d -> z
(⣴⣸) f b c a d = f a b c d

(⣆⣼) :: (a -> b -> c -> d -> z) -> c -> a -> b -> d -> z
(⣆⣼) f c a b d = f a b c d

(⣰⣼) :: (a -> b -> c -> d -> z) -> a -> c -> b -> d -> z
(⣰⣼) f a c b d = f a b c d

(⣷⣄) :: (a -> b -> c -> d -> z) -> d -> c -> b -> a -> z
(⣷⣄) f d c b a = f a b c d

(⣾⣄) :: (a -> b -> c -> d -> z) -> c -> d -> b -> a -> z
(⣾⣄) f c d b a = f a b c d

(⣦⣇) :: (a -> b -> c -> d -> z) -> c -> b -> d -> a -> z
(⣦⣇) f c b d a = f a b c d

(⣧⣆) :: (a -> b -> c -> d -> z) -> d -> b -> c -> a -> z
(⣧⣆) f d b c a = f a b c d

(⣼⣆) :: (a -> b -> c -> d -> z) -> b -> d -> c -> a -> z
(⣼⣆) f b d c a = f a b c d

(⣴⣇) :: (a -> b -> c -> d -> z) -> b -> c -> d -> a -> z
(⣴⣇) f b c d a = f a b c d

(⣇⣴) :: (a -> b -> c -> d -> z) -> d -> a -> b -> c -> z
(⣇⣴) f d a b c = f a b c d

(⣸⣴) :: (a -> b -> c -> d -> z) -> a -> d -> b -> c -> z
(⣸⣴) f a d b c = f a b c d

(⣠⣷) :: (a -> b -> c -> d -> z) -> a -> b -> d -> c -> z
(⣠⣷) f a b d c = f a b c d

(⣧⣰) :: (a -> b -> c -> d -> z) -> d -> b -> a -> c -> z
(⣧⣰) f d b a c = f a b c d

(⣼⣰) :: (a -> b -> c -> d -> z) -> b -> d -> a -> c -> z
(⣼⣰) f b d a c = f a b c d

(⣄⣷) :: (a -> b -> c -> d -> z) -> b -> a -> d -> c -> z
(⣄⣷) f b a d c = f a b c d

(⣇⣦) :: (a -> b -> c -> d -> z) -> d -> a -> c -> b -> z
(⣇⣦) f d a c b = f a b c d

(⣸⣦) :: (a -> b -> c -> d -> z) -> a -> d -> c -> b -> z
(⣸⣦) f a d c b = f a b c d

(⣰⣧) :: (a -> b -> c -> d -> z) -> a -> c -> d -> b -> z
(⣰⣧) f a c d b = f a b c d

(⣷⣠) :: (a -> b -> c -> d -> z) -> d -> c -> a -> b -> z
(⣷⣠) f d c a b = f a b c d

(⣾⣠) :: (a -> b -> c -> d -> z) -> c -> d -> a -> b -> z
(⣾⣠) f c d a b = f a b c d

(⣆⣧) :: (a -> b -> c -> d -> z) -> c -> a -> d -> b -> z
(⣆⣧) f c a d b = f a b c d
