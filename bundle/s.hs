module Trees where
import Data.List
import System.Environment

Data Tree = Leaf a Tree Tree
          | Node a
          deriving (Show, Eq)

sum :: Tree Int -> Int
sum (Leaf a) = a
sum (Node v l r) = v + (sum l) + (sum r)
