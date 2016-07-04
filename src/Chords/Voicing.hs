module Chords.Voicing
    ( major
    , minor
    , augmented
    , diminished
    , minor7th
    , minor7Flat5th
    , major7th
    , seventh
    , seventhSuspended4th
    , suspended2nd
    , suspended4th
    ) where

import Chords.Types (Voicing(Voicing), Offset(..))

major :: Voicing
major = Voicing "" [O1, O3, O5]

minor :: Voicing
minor = Voicing "m" [O1, Ob3, O5]

augmented :: Voicing
augmented = Voicing "aug" [O1, O3, Os5]

diminished :: Voicing
diminished = Voicing "dim" [O1, Ob3, Ob5]

minor7th :: Voicing
minor7th = Voicing "m7" [O1, Ob3, O5, Ob7]

minor7Flat5th :: Voicing
minor7Flat5th = Voicing "m7b5" [O1, Ob3, Ob5, Ob7]

major7th :: Voicing
major7th = Voicing "maj7" [O1, O3, O5, O7]

seventh :: Voicing
seventh = Voicing "7" [O1, O3, O5, Ob7]

seventhSuspended4th :: Voicing
seventhSuspended4th = Voicing "7sus4" [O1, O4, O5, Ob7]

suspended2nd :: Voicing
suspended2nd = Voicing "sus2" [O1, O2, O5]

suspended4th :: Voicing
suspended4th = Voicing "sus2" [O1, O4, O5]
