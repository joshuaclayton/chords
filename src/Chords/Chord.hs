module Chords.Chord
    ( buildChord
    ) where

import           Chords.Types (PitchClass, Octave, Voicing(vOffsets), Chord, Offset, pitches, offsets)
import           Control.Arrow ((&&&))
import qualified Data.List as L

buildChord :: Octave -> (PitchClass, Voicing) -> Chord
buildChord o (p, v) = map (translate p o) $ vOffsets v

translate :: PitchClass -> Octave -> Offset -> (PitchClass, Octave)
translate p oct o =
    maybe (p, oct) (newPitch &&& newOctave) ((+) <$> start <*> offsetPosition)
  where
    start = L.elemIndex p pitches
    offsetPosition = L.elemIndex o offsets
    newPitch = (!!) pitches
    newOctave r = div r 12 + oct
