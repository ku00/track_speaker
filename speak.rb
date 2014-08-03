#!/usr/bin/env ruby
# coding: utf-8
require 'itunes-client'
require 'voice_text_api'
require 'open3'

class Speak
  include Itunes
  attr_reader :start

  API_KEY = 'your_api_key'
  SPEAKER = %i[haruka hikari takeru]
  VOLUME = 200
  
  def initialize
    @vt = VoiceTextAPI.new(API_KEY)
    @speaker = SPEAKER[rand(3)]
    @player = Player.play
  end

  def next_start_time
    track = @player.current_track
    time = track.time.split(':').reverse
    time.map.with_index { |t, idx| t.to_i * (60 ** idx) }.inject(:+)
  end

  def speak_track
    track = @player.current_track
    wav = @vt.tts(track.name, @speaker, volume: VOLUME)
    Open3.capture3("/usr/local/bin/play -", :stdin_data => wav)
  end
end