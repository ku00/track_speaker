#!/usr/bin/env ruby
# coding: utf-8
require 'itunes-client'
require 'voice_text_api'
require 'open3'

class Speak
  include Itunes

  API_KEY = 'your_api_key'
  SPEAKER = %i[haruka hikari takeru]
  
  def initialize
    @vt = VoiceTextAPI.new(API_KEY)
    @speaker = SPEAKER[rand(3)]
  end

  def speak_track
    wav = @vt.tts("こころがぴょんぴょんするんじゃ〜", @speaker)
    Open3.capture3("/usr/local/bin/play -", :stdin_data => wav)
    puts "hello clockwork...!"
  end
end