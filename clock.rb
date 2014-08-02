#!/usr/bin/ruby
require 'clockwork'
require './speak'
include Speak

module Clockwork
  handler do |job|
    self.send(job.to_sym)
  end

  every(5.seconds, 'speak_track')
end