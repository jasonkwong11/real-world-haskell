module Print1 where
  main :: IO ()
  main = putStrLn "hello world!"

  -- main is the default action when you build an
  -- executable or run it in a REPL
  -- it is not a function but is often a series
  -- of instructions to execute, which can include
  -- applying functions and producing side-effects.

-- when building a project with Stack,
--having a main executable in Main.hs is obligatory,
-- but you can have source files and load them
-- in GHCi without necessarily having a main block

