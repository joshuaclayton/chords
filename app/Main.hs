module Main where

import Chords.Types
import Chords.Voicing
import Chords.Chord
import Chords.Player

main :: IO ()
main =
    mapM_ playChord
        [ buildChord (F, major)
        , buildChord (C, major)
        , buildChord (D, minor)
        , buildChord (Bb, major)
        ]
