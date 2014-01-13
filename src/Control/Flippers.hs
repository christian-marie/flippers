-- |
-- Module      : Flippers
-- Copyright   : (c) Christian Marie 2014
-- License     : BSD3
--
-- Maintainer  : christian@ponies.io
-- Stability   : experimental
-- Portability : portable
--
-- This module provides functions to rearrange arguments, such as flip4 and
-- invert4. Compose them to achive whatever ordering you like.
--
module Control.Flippers
(
    -- * Flipping
    -- | Perhaps a slight misnomer, these functions shuffle the last argument
    -- to the first position.
    flip1,
    flip2,
    flip3,
    flip4,
    flip5,
    flip6,
    flip7,
    flip8,
    flip9,
    -- * Inverting
    -- | Reverse the order of all arguments
    invert1,
    invert2,
    invert3,
    invert4,
    invert5,
    invert6,
    invert7,
    invert8,
    invert9,
) where

-- | Does nothing, 'id'
flip1 :: (a -> b) -> (a -> b)
flip1 = id

-- | Does nothing, 'id'
invert1 :: (a -> b) -> (a -> b)
invert1 = id

-- | Move the second argument to the first place
flip2 :: (a -> b -> c) -> (b -> a -> c)
flip2 = flip

-- | Reverse both arguments, same as 'flip2'
invert2 :: (a -> b -> c) -> (b -> a -> c)
invert2 = flip2

-- | Move the third argument to the first place
flip3 :: (a -> b -> c -> d) -> (c -> a -> b -> d)
flip3 = flip . (flip .)

-- | Reverse three arguments
invert3 :: (a -> b -> c -> d) -> (c -> b -> a -> d)
invert3 = flip3 . invert2

-- | Move the fourth argument to the first place
flip4 :: (a -> b -> c -> d -> e) -> (d -> a -> b -> c -> e)
flip4 = flip . (flip3 .)

-- | Reverse four arguments
invert4 :: (a -> b -> c -> d -> e) -> (d -> c -> b -> a -> e)
invert4 = flip4 . invert3

-- | Move the fifth argument to the first place
flip5 :: (a -> b -> c -> d -> e -> f) -> (e -> a -> b -> c -> d -> f)
flip5 = flip . (flip4 .)

-- | Reverse five arguments
invert5 :: (a -> b -> c -> d -> e -> f) -> (e -> d -> c -> b -> a -> f)
invert5 = flip5 . invert4

-- | Move the sixth argument to the first place
flip6 :: (a -> b -> c -> d -> e -> f -> g) ->
         (f -> a -> b -> c -> d -> e -> g)
flip6 = flip . (flip5 .)

-- | Reverse six arguments
invert6 :: (a -> b -> c -> d -> e -> f -> g) ->
           (f -> e -> d -> c -> b -> a -> g)
invert6 = flip6 . invert5

-- | Move the seventh argument to the first place
flip7 :: (a -> b -> c -> d -> e -> f -> g -> h) ->
         (g -> a -> b -> c -> d -> e -> f -> h)
flip7 = flip . (flip6 .)

-- | Reverse seven arguments
invert7 :: (a -> b -> c -> d -> e -> f -> g -> h) ->
           (g -> f -> e -> d -> c -> b -> a -> h)
invert7 = flip7 . invert6

-- | Move the eight argument to the first place
flip8 :: (a -> b -> c -> d -> e -> f -> g -> h -> i) ->
         (h -> a -> b -> c -> d -> e -> f -> g -> i)
flip8 = flip . (flip7 .)

-- | Reverse eight arguments
invert8 :: (a -> b -> c -> d -> e -> f -> g -> h -> i) ->
           (h -> g -> f -> e -> d -> c -> b -> a -> i)
invert8 = flip8 . invert7

-- | Move the ninth argument to the first place
flip9 :: (a -> b -> c -> d -> e -> f -> g -> h -> i -> j) ->
         (i -> a -> b -> c -> d -> e -> f -> g -> h -> j)
flip9 = flip . (flip8 .)

-- | Reverse nine arguments
invert9 :: (a -> b -> c -> d -> e -> f -> g -> h -> i -> j) ->
           (i -> h -> g -> f -> e -> d -> c -> b -> a -> j)
invert9 = flip9 . invert8
