#!/usr/bin/ruby
require 'clockwork'
require './speak_track'

module Clockwork
  handler do |job|
    job.call
  end

  every(5.seconds, SpeackTrack.new)
end