#!/usr/bin/env ruby
# coding: utf-8
require 'itunes-client'
require 'voice_text_api'
require 'open3'

class Speak
  include Itunes

  API_KEY = 'your_api_key'
  SPEAKER = %i[haruka hikari takeru]
  VOLUME = 200
  
  def initialize
    @vt = VoiceTextAPI.new(API_KEY)
    @speaker = SPEAKER[rand(3)]

    @player = Player.play
    @now_playing_track = @player.current_track
    speak_track(@now_playing_track)
  end

  def judge
    track = @player.current_track
    speak_track(track) if track.name != @now_playing_track.name
  end

  def speak_track(track)
    @now_playing_track = track
    wav = @vt.tts("#{track.artist} #{track.name}", @speaker, volume: VOLUME)
    Open3.capture3("/usr/local/bin/play -", :stdin_data => wav)
  end
end