#!/usr/bin/ruby
require 'clockwork'
require './speak'

module Clockwork
  speak = Speak.new
  
  handler do |job|
    job.speak_track
  end

  every(5.seconds, speak)
end