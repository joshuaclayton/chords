module Main where

import Chords.Types (PitchClass(..))
import Chords.Voicing (major, minor)
import Chords.Chord (buildChord)
import Chords.Player (playChord)

main :: IO ()
main =
    mapM_ playChord
        [ buildChord (F, major)
        , buildChord (C, major)
        , buildChord (D, minor)
        , buildChord (Bb, major)
        ]
