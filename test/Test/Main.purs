module Test.Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION, error, message)

import Example.Cont as Cont
import Example.Reader as Reader
import Example.State as State
import Example.StateEff as StateEff
import Example.Writer as Writer
import Example.RWS as RWS
import Example.List as List
import Example.Error as Error

main :: Eff (console :: CONSOLE, exception :: EXCEPTION) Unit
main = do
  Cont.main
  Reader.main
  State.main
  StateEff.main
  Writer.main
  RWS.main
  List.main
  Error.main
