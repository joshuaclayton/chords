module Main where

import Chords.Types (PitchClass(..))
import Chords.Voicing (major, minor)
import Chords.Chord (buildChord)
import Chords.Player (playChord)

main :: IO ()
main =
    mapM_ playChord
        [ buildChord 0 (F, major)
        , buildChord 0 (C, major)
        , buildChord 0 (D, minor)
        , buildChord (-2) (Bb, major)
        ]
