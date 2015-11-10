require './bloops'

b = Bloops.new

def chord(b, volume, sustain, attack)
  chord = b.sound Bloops::SQUARE
  chord.volume = volume
  chord.attack = attack
  chord.sustain = sustain
  chord.slide = 0.02
  chord.punch = 0.1
  return chord
end

def bass(b, volume, sustain, attack)
  chord = b.sound Bloops::SQUARE
  chord.volume = volume
  chord.decay = 1
  return chord
end

melody = chord(b, 1, 0.5, 0.1)
bass1 = bass(b, 0.6, 0.9, 0.2)
bass2 = bass(b, 0.6, 0.9, 0.2)
bass3 = bass(b, 0.6, 0.9, 0.2)

b.tune melody, """
+
8 8C  8C 16C  8C. - 8Bb  8A 8G
8G 16G 8G. 8F 4F 4F
8 + 8C 8C 8C       8C - 16Bb 16A 16G 8G.
16 8G 8G. 8F F G
8 8G 8G 16G 8G.     8F 8E 8D
D E 8D. 8C. 8F
8 2F
1 1 1 1
"""

b.tune bass1, """
- 1C
2G 2F
1C
2G 2F
1G
2F 2F
1 1 1 1
"""
b.tune bass2, """
- 1A
2E 2D
1A
2E 2D
1E
2D 2D
1 1 1 1
"""
b.tune bass3, """
- 1F
- 2C 2Bb
+ 1F
- 2C 2Bb
1C
- 2A 2Bb
1 1 1 1
"""
b.play

while true do
  b.play
  sleep 0.5 while not b.stopped?
end
