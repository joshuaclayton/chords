module Chords.Chord
    ( buildChord
    ) where

import           Chords.Types (PitchClass, Voicing(vOffsets), Chord, Offset, pitches, offsets)
import qualified Data.List as L

buildChord :: (PitchClass, Voicing) -> Chord
buildChord (p, v) = map (translate p) $ vOffsets v

translate :: PitchClass -> Offset -> PitchClass
translate p o =
    maybe p ((!!) pitches) $ ((+) <$> start <*> offsetPosition)
  where
    start = L.elemIndex p pitches
    offsetPosition = L.elemIndex o offsets
