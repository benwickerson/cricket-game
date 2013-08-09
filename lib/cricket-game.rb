require 'active_record'
require 'active_support/all'
require 'sqlite3'
require 'highline/import'

Dir['lib/cricket-game/*.rb'].each { |file| require file }

module CG

  def self.connect(dbfile='db/cricket.db')
    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3", 
      :database => dbfile
    )
  end
end

CG.connect

