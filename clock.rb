#!/usr/bin/ruby
require 'clockwork'
require './speak'

module Clockwork
  speak = Speak.new
  
  handler do |job|
    job.judge
  end

  every(7.seconds, speak)
end
