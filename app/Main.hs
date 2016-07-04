module Main where

import Control.Monad (void)
import Chords.Types
import Chords.Voicing
import Chords.Chord
import Chords.Player

main :: IO ()
main =
    void $ mapM playChord
        [ buildChord (F, major)
        , buildChord (C, major)
        , buildChord (D, minor)
        , buildChord (Bb, major)
        ]
