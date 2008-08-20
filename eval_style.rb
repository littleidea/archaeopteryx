require 'lib/archaeopteryx'

require 'rubyfringe'

zed = Clock.new(15)
hip_hop = Clock.new(90)
drum_and_bass = {:clock => Clock.new(170), :drumfile => "db_drum_definition.rb"}
techno = {}

Arkx.new(:clock => drum_and_bass[:clock],
         :measures => 4,
         :logging => true,
         :evil_timer_offset_wtf => 0.2,
         :generator => Rhythm.new(:drumfile => drum_and_bass[:drumfile],
                                  :mutation => L{|measure| 0 == (measure - 1) % 2})).go

# if you move mutation definition into drum file you can alternate between 16-bar long loops
# and 2-bar fills.
