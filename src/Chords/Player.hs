module Chords.Player
    ( playChord
    ) where

import           Chords.Types (Chord, PitchClass, Octave)
import qualified Control.Concurrent.Async as A
import           Control.Monad (void)
import qualified System.Process as P

playChord :: Chord -> IO ()
playChord = void . A.mapConcurrently playPitch

playPitch :: (PitchClass, Octave) -> IO ()
playPitch (p, o) =
    void $ P.readProcessWithExitCode "play" ["-qn", "synth", "1.5", "pluck", show p, "pitch", show $ o * 1200] ""
