module Main where
-- stuff for 2.10 (computing diagonals) p11.
import Math (sqrt)

import Prelude
import Effect (Effect)
import Effect.Console (log)

diagonal w h = sqrt( w * w + h * h)w

main :: Effect Unit
main = do
  logshow (diagonal 3.0 4.0)

--the above works while the below, from the book, seems to no longer work

{-
-- Purescript By Example p8 Ch 2.5
module Main where

import Control.Monad.Eff.Console

main = log "Hello, World!"

-}

-- this results in

{-
  Module Control.Monad.Eff.Console was not found.
        Make sure the source file exists, and that it has been provided as an input to the compiler.


See https://github.com/purescript/documentation/blob/master/errors/ModuleNotFound.md for more information,
    or to contribute content related to this error.


* ERROR: Subcommand terminated with exit code 1
-}

-- so it would appear some things have changed since.
-- TODO: come back and investigate this when we have a better understanding of
--        how Purescript's Control & everything have been set up since, or
--          changed.
