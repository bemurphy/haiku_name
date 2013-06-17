require "haiku_name/version"
require "securerandom"

module HaikuName
  DELIMITER = '-'.freeze

  # Return a randomly generate haiku name string
  #
  # @param [Integer] token_length optional length of token to use. 0 to omit
  # @return [String]
  def self.generate(token_length = 4)
    parts = [ADJECTIVES.sample, NOUNS.sample]

    if token_length.to_i > 0
      token = SecureRandom.hex(token_length)[0, token_length]
      parts << token
    end

    parts.join(DELIMITER)
  end

  ADJECTIVES = %w[
    aged
    ancient
    autumn
    billowing
    bitter
    blue
    bold
    broken
    cold
    cool
    crimson
    dark
    dawn
    delicate
    empty
    falling
    floral
    frosty
    green
    hidden
    icy
    late
    little
    lively
    long
    misty
    morning
    patient
    polished
    purple
    quiet
    red
    silent
    small
    snowy
    solitary
    sparkling
    still
    summer
    twilight
    wandering
    weathered
    white
    winter
  ].freeze

  NOUNS = %w[
    bird
    breeze
    brook
    butterfly
    cloud
    darkness
    dawn
    dew
    dream
    dust
    feather
    field
    fire
    firefly
    flower
    fog
    forest
    frog
    frost
    glade
    glitter
    grass
    haze
    hill
    lake
    leaf
    meadow
    moon
    morning
    mountain
    night
    paper
    pine
    pond
    rain
    river
    sea
    shadow
    silence
    sky
    smoke
    snow
    snowflake
    star
    sun
    sun
    sunset
    surf
    thunder
    tree
    violet
    voice
    water
    waterfall
    wave
    wildflower
    wind
    wood
  ].freeze
end
