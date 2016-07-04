module Chords.Types
    ( PitchClass(..)
    , Offset(..)
    , Chord
    , Voicing(..)
    , pitches
    , offsets
    ) where

import qualified Data.List as L

data PitchClass = Ab | A | Bb | B | C | Cs | D | Eb | E | F | Fs | G deriving (Eq, Ord)
data Offset = O1 | Ob2 | O2 | Ob3 | O3 | O4 | Ob5 | O5 | Os5 | O6 | Ob7 | O7 deriving (Eq, Ord)

instance Show PitchClass where
    show Ab = "A♭"
    show A = "A"
    show Bb = "B♭"
    show B = "B"
    show C = "C"
    show Cs = "C♯"
    show D = "D"
    show Eb = "E♭"
    show E = "E"
    show F = "F"
    show Fs = "F♯"
    show G = "G"

type Chord = [PitchClass]

data Voicing = Voicing
    { vName :: String
    , vOffsets :: [Offset]
    }

pitches :: [PitchClass]
pitches =
    take (2 * length pitches') $ L.cycle pitches'
  where
    pitches' = [Ab, A, Bb, B, C, Cs, D, Eb, E, F, Fs, G]

offsets :: [Offset]
offsets = [O1, Ob2, O2, Ob3, O3, O4, Ob5, O5, Os5, O6, Ob7, O7]
