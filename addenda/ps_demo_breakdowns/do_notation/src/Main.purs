module Main where

import Prelude
import Control.MonadPlus (guard)
import Effect (Effect)
import Effect.Console (logShow)
import Data.Array ((..))
import Data.Foldable (for_)

{-
    these were included so the results could be printed on the webpage.  Here
        instead we're going to be printing to console, so they're being
        commented out.  It's not being deleted since the purpose of this walk
        through is annotative.
-}
--import TryPureScript (render, withConsole)
-- Find Pythagorean triples using an array comprehension.
triples :: Int -> Array (Array Int)
triples n = do
  z <- 1 .. n
  y <- 1 .. z
  x <- 1 .. y
  guard $ x * x + y * y == z * z
  pure [x, y, z]

-- main has to be refactored to remove the references to TryPureScript modules
--  the original, for context:
{-
main :: Effect Unit                 --type signature
main = render =<< withConsole do
  for_ (triples 20) logShow

--the signatures of the above:
-- render      :: Doc -> Effect Unit

-- (=<<) is an alias for Control.Bind.bindFlipped
-- bindFlipped :: forall b a m. Bind m => (a -> m b) -> m a -> m b
--      "bind with its arguments reversed"

-- withConsole :: forall a . Effect a -> Effect Doc

-- for_        :: forall a b f m
--                  . Applicative m
--                  => Foldable f
--                  => f a
--                  -> (a -> m b)
--                  -> m Unit
--      "a version of `traverse_` with its arguments flipped"

-- logShow :: forall a. Show a => a -> Effect Unit



-}
