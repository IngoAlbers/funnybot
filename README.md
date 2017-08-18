# Funnybot
A Slack bot based on the legendary XJ-212 Vudenkrein Funnybot.

## Requirements

To run this app, you will need the following dependencies:

- Ruby
- Bundler

## Installation

Create a new Bot Integration under [services/new/bot](http://slack.com/services/new/bot).  
Note the API token and invite the bot to your desired slack channel.

### Environment

#### SLACK_API_TOKEN

Set `SLACK_API_TOKEN` from the Bot integration settings on Slack.

#### GIPHY_API_KEY

The bot replies with animated GIFs. While it's currently not necessary, you may need to set `GIPHY_API_KEY` in the future.  
See [github.com/Giphy/GiphyAPI](https://github.com/Giphy/GiphyAPI) for details.

## Usage

`bundle install`

`bundle exec ruby funnybot.rb`

In any channel Funnybot joined you will then be able to:

Type anything including `joke` to let Funnybot tell a joke.

Type `gif CONTEXT` to let Funnybot post a random gif for the provided context.

## Contributing

1. Fork the repository
2. Create a branch (`git checkout -b new-branch`)
3. Commit your changes (`git commit -am 'Add great new thing'`)
4. Push to the branch (`git push origin new-branch`)
5. Create new Pull Request
