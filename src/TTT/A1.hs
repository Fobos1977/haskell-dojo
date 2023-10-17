{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module TTT.A1 where
import Data.Char (toUpper)

-- Q#01

_SIZE_ :: Int
_SIZE_ = 3

{- *TTT.A1> _SIZE_
3
*TTT.A1> _SIZE_ + 2
5
*TTT.A1> :t _SIZE_
_SIZE_ :: Int
*TTT.A1>  -}

-- _SIZE_ = undefined

-- Q#02

_DISPLAY_LOGO_ :: Bool
_DISPLAY_LOGO_ = True

{- *TTT.A1> _DISPLAY_LOGO_
True
*TTT.A1> d = _DISPLAY_LOGO_
*TTT.A1> d
True
*TTT.A1> not d
False
*TTT.A1> d && not d
False
*TTT.A1>  -}

-- _DISPLAY_LOGO_ = undefined

-- Q#03

convertRowIndex :: Char -> Int
convertRowIndex char = fromEnum ( toUpper char ) - 65

{- *TTT.A1> f = convertRowIndex
*TTT.A1> f 'A'
0
*TTT.A1> f 'a'
0
*TTT.A1> f 'b'
1
*TTT.A1> f 'B' - 1
0
*TTT.A1> f 'g'
6
*TTT.A1>  -}

-- onvertRowIndex = undefined

-- Q#04

_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1, -1)

{- *TTT.A1> m = _INVALID_MOVE_
*TTT.A1> fst m
-1
*TTT.A1> snd m
-1
*TTT.A1>  -}

-- _INVALID_MOVE_ = undefined

-- Q#05

_SEP_ :: String
_SEP_ = "_|_"

{- *TTT.A1> head _SEP_
'_'
*TTT.A1> last _SEP_
'_'
*TTT.A1> _SEP_ !! 1
'|'
*TTT.A1>  -}

-- _SEP_ = undefined

-- Q#06

data Square = X | O | Void
    deriving (Show, Eq)

{- *TTT.A1> X
X
*TTT.A1> :t X
X :: Square
*TTT.A1> O
O
*TTT.A1> :t O
O :: Square
*TTT.A1> X == O
False
*TTT.A1>  -}

-- data Square

-- Q#07

data GameState = XWON | OWON | TIE | PRO
    deriving (Show, Eq)

{- *TTT.A1> XWON
XWON
*TTT.A1> OWON
OWON
*TTT.A1> TIE
TIE
*TTT.A1> PRO
PRO
*TTT.A1> OWON == PRO
False
*TTT.A1>  -}

-- data GameState

-- Q#08

type Player = Square
type Row    = [Square]
type Line   = [Square]
type Board  = [Square]
type Move   = (Int, Int)

-- Q#09

getFirstPlayer :: Bool -> Player
getFirstPlayer b =
    if b then X else O

getFirstPlayer_ :: Bool -> Player
getFirstPlayer_ b
    | not b = O
    | otherwise  = X

-- [1 of 1] Compiling TTT.A1           ( src/TTT/A1.hs, interpreted )
-- Ok, one module loaded.
-- *TTT.A1> getFirstPlayer_ True
-- X
-- *TTT.A1> getFirstPlayer_ False
-- O
-- *TTT.A1> getFirstPlayer True
-- X
-- *TTT.A1> getFirstPlayer False
-- O
-- *TTT.A1> 

--getFirstPlayer__ :: Bool -> Player
--getFirstPlayer__ b = case b of
--    False  -> O
--    _      -> X

-- getFirstPlayer = undefined
-- getFirstPlayer_ = undefined

-- Q#10

showGameState :: GameState -> String
showGameState g = case g of
  XWON -> "X won the game!"
  OWON -> "O won the game!"
  TIE  -> "The game ended in a tie."
  PRO  -> "The game is in progress."

-- *TTT.A1> :r
-- [1 of 1] Compiling TTT.A1           ( src/TTT/A1.hs, interpreted )
-- Ok, one module loaded.
-- *TTT.A1> showGameState XWON
-- "X won the game!"
-- *TTT.A1> showGameState OWON
-- "O won the game!"
-- *TTT.A1> showGameState TIE
-- "The game ended in a tie."
-- *TTT.A1> showGameState PROG
-- "The game is in progress."
-- *TTT.A1> 

--showGameState = undefined

-- Q#11
switchPlayer :: Player -> Player
switchPlayer p = case p of
  X -> O
  O -> X
  Void -> Void

{- *TTT.A1> :r
[1 of 1] Compiling TTT.A1           ( src/TTT/A1.hs, interpreted )
Ok, one module loaded.
*TTT.A1> switchPlayer X
O
*TTT.A1> switchPlayer O
X
*TTT.A1> switchPlayer Void
Void
*TTT.A1> -}

-- switchPlayer = undefined

-- Q#12

showSquare :: Square -> String
showSquare s 
    | s == X    = "X"
    | s == O    = "O"
    | s == Void = "_"

{- [1 of 1] Compiling TTT.A1           ( src/TTT/A1.hs, interpreted )
Ok, one module loaded.
*TTT.A1> showSquare X
"X"
*TTT.A1> showSquare O
"O"
*TTT.A1> showSquare Void
"_"
*TTT.A1>  -}

{- showSquare = undefined -}