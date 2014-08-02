#!/usr/bin/env ruby
# coding: utf-8
require 'itunes-client'
require 'voice_text_api'
require 'open3'
include Itunes

module Speak
  def speak_track
    puts "hello clockwork...!"
  end
end