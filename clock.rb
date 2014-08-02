#!/usr/bin/ruby
require 'clockwork'
require './speak'

module Clockwork
  speak = Speak.new
  
  handler do |job|
    job.speak_track
  end

  every(speak.start.seconds, speak)
end