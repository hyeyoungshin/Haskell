-- import only the nub function from Data.List module
import Data.List (nub)
-- to avoid name clashes, we can import only the functions whose name does not clash Prelude's function

import qualified Data.Map 
-- To call Data.List's filter you have to type Data.Map.filter
-- Or you can do `import qualified Data.Map as M` and use M.filter


numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
