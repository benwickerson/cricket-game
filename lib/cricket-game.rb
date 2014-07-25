$: << File.dirname(__FILE__)

require 'active_record'
require 'active_support/all'
require 'sqlite3'
require 'highline/import'
require 'hirb'

Dir['lib/cricket-game/*.rb'].each { |file| require file }
Dir['lib/cricket-game/models/*.rb'].each { |file| require file }

