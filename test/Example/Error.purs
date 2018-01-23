module Example.Error where

import Prelude

import Control.Monad.Eff
import Control.Monad.Eff.Console (CONSOLE, log)
import Control.Monad.Eff.Exception (EXCEPTION, error, message)

import Control.Monad.Error.Class

testError = do
  catchError (throwError (error "ERROR")) catch
  where
    catch e = if message e == "ERROR"
                 then pure "expected error"
                 else pure "wrong error"

main :: forall e. Eff (console :: CONSOLE, exception :: EXCEPTION | e) Unit
main = do
  x <- testError
  log ("Testing catchError: " <> x)
