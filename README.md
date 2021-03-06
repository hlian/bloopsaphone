```
      ~ about this fork ~

  this fork slightly updates the original
  bloopsaphone by implementing dotted
  notation:

      b.tune "+ 8 8C  8C 16C  8C. - 8Bb  8A 8G"

  that plays the haunting melody from
  "king of carrot flowers, pt 1." for the
  full demo, see <ext/ruby/tune_king.rb>.

  ok. we now take you to regularly
  scheduled README, by why the lucky
  stiff — who is missed every day.

```


```
      |~~              |~~
      |                |
     :$: bloopsaphone :$:
      `''''''''''''''''`

  for writing chiptune-style songs
  in c or ruby. you know: the sounds
  of ataris, gameboys and the like.

               ~

  -$- ABOUT

  this is a small c library for sending
  chiptunes through portaudio, which is
  a rather light cross-platform audio lib.
  <http://www.portaudio.com/>

  right now i'm only including ruby
  bindings. you are welcome to contribute
  code to hook up to other languages,
  though.

  i wrote this for h-ety h.
  <http://hacketyhack.net/>

  i don't have binaries ready for this yet,
  so if you're on windows or os x, you may
  have to wait until HH comes out at ART
  AND CODE. the tribulations you face.

               ~

  -$- THE BLOOPSAPHONE THEME SONG
      (in ruby)

      require 'bloops'

    # the bloops o' phone
      b = Bloops.new
      b.tempo = 320

    # melodious
      s1 = b.sound Bloops::SQUARE
      s1.punch = 0.5
      s1.sustain = 0.4
      s1.decay = 0.2
      s1.arp = 0.4
      s1.aspeed = 0.6
      s1.repeat = 0.6
      s1.phase = 0.2
      s1.psweep = 0.2

    # beats
      s2 = b.sound Bloops::NOISE
      s2.punch = 0.5
      s2.sustain = 0.2
      s2.decay = 0.4
      s2.slide = -0.4
      s2.phase = 0.2
      s2.psweep = 0.2

    # the tracks
      b.tune s1, "f#5 c6 e4 b6 g5 d6 4  f#5 e5 c5 b6 c6 d6 4 "
      b.tune s2, "4   c6 4  b5 4  4  e4 4   c6 4  b5 4  4  e4"

    # and away we go
      b.play
      sleep 1 while !b.stopped?

               ~

  -$- BUILDING FOR RUBY

  If Ruby is in your path and PortAudio 1.9
  or greater is installed:

    make ruby

  To install PortAudio 1.9 under Ubuntu:

    aptitude install portaudio19-dev

  To build from source isn't too bad.
  Download PortAudio 1.9 and build it.
  <http://www.portaudio.com/archives/pa_stable_v19_20071207.tar.gz>

  Like this:

    $ tar xzvf pa_stable_v19_20071207.tar.gz
    $ cd portaudio
    $ ./configure
    $ make
    $ sudo make install

  Then go back to Bloopsaphone and do
  a `make ruby`.

               ~

  -$- THE IDEALS,

  -1- ASYNCHRONOUS.
      You send it a song and it plays in
      the background. You'll get an event
      when it finishes.

  -2- SMALL.
      This is just a toy, I don't want it
      to be very big and comprehensive.
      Just to play little tunes with a
      nostalgic arcade sound rather than
      the CASIO-stylings of most MIDI.

  -3- CUSTOM NOTATION.
      Someone told me about Nokring, iMelody,
      numbered musical notation and I did
      some reading. They're little languages
      for texting yourself a ringtone.

  <http://en.wikipedia.org/wiki/Ring_Tone_Transfer_Language>
  <http://homepage.mac.com/alvinmok/ericsson/emelody.html>

      Bloopsaphone uses a variation on RTTTL.

      Instead of commas, I use whitespace.
      A rest is simply a number. A plus sign
      moves everything up an octave. A minus
      down an octave.

      The Simpsons' Theme, for instance, would be:

        32 + C E F# 8:A G E C - 8:A 8:F# 8:F# 8:F# 2:G

      Which translates into:

       * a 1/32nd note rest.
       * change one octave up.
       * C quarter note.
       * E quarter note.
       * F# quarter note.
       * A eighth note.
       * G quarter.
       * E quarter.
       * C one-quarter note.
       * change one octave down.
       * A eighth.
       * Three F# eighths.
       * G half note.

      The colons are optional. They are there because you
      can place an octave number after each note. Somehow
      "8B6" (an eighth note of B at the sixth octave) looks
      more confusing than "8:B6". I guess I figured that
      the timing "8" is conceptually separate from the
      actual tone "B6", even though they both comprise
      the note itself.

  -4- SERIALIZE SOUNDS.
      To accomodate passing instruments between
      ruby and c, bloopsaphone comes with a tiny
      file format for describing sounds.

      You can find examples of these in the sounds/
      folder in this distro. Possible sound types
      are 'square', 'sawtooth', 'sine' and 'noise'.
      All other settings go from 0.0 to 1.0.

      The 'freq' setting is only used if the sound
      is played without a tune.
```
