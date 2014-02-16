# Metasploit MSFCLI IRC front end  plugin

[![Gem Version](https://badge.fury.io/rb/cinch-metasploit.png)](http://badge.fury.io/rb/cinch-metasploit)

This plugin uses metasploit msfcli for some metasploit actions

you need to have metasploit installed!

## Installation
First install the gem by running:
    [sudo] gem install cinch-metasploit

Then load it in your bot:
    require "cinch"
    require "cinch/plugins/metasploit"

    bot = Cinch::Bot.new do
      configure do |c|
        # add all required options here
        c.plugins.plugins = [Cinch::Plugins::Metasploit] # optionally add more plugins, remember is ScanNmap
      end
    end

    bot.start

## Commands
### !metasploit  <module/exploit> < options(RHOST etc) > < >
Port scan a host

## Options
None.

## TODO

- put in some checks
- add scan options
- try to get rid of the xml tmp file

