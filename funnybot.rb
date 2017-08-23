require 'open-uri'
require 'slack-ruby-bot'

class Funnybot < SlackRubyBot::Bot
  scan(/joke/i) do |client, data, _match|
    response = open('https://icanhazdadjoke.com/', 'Accept' => 'application/json').read
    joke = JSON.parse(response)['joke']

    client.say(text: joke, channel: data.channel)
  end

  match(/^gif (?<context>.*)$/) do |client, data, match|
    client.say(channel: data.channel, gif: match[:context])
  end

  help do
    title 'XJ-212 Funnybot'
    desc 'This bot is supposed to entertain humans.'

    command 'joke' do
      desc 'Tells a random joke.'
    end

    command 'gif <context>' do
      desc 'Posts a random gif related to <context>.'
    end
  end
end

Funnybot.run
