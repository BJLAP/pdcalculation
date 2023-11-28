import Data.List

-- Data
array = [5, 12, 8, 130, 44]

-- Some calculations  (called 'pure' functions)
result = find (> 10) array
result2 =  find (> 1000) array

-- Some functions that handle edge cases and printing to IO. Are these pure?
display :: Maybe Integer -> String
display (Just a) = show a
display Nothing = "No value"

displayNotPure :: Maybe Integer -> IO()
displayNotPure (Just a) = print a
displayNotPure Nothing =  print "No value"
