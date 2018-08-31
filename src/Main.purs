module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

class MyShow a where
  myShow :: a -> String

instance showString :: MyShow String where
  myShow s = s

else instance showBoolean :: MyShow Boolean where
  myShow true = "true"
  myShow false = "false"

else instance showA :: MyShow a where
  myShow _ = "Invalid"

data MysteryItem = MysteryItem

main :: Effect Unit
main = do
  log $ myShow "hello" -- hello
  log $ myShow true -- true
  log $ myShow MysteryItem -- Invalid
