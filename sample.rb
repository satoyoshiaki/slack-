require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv/load'

include Clockwork


sample = SlackNotify::Client.new(webhook_url: ENV['URL'])
every(10.minutes, 'bot1') do
    sample.notify("スラックぼっと")
end

