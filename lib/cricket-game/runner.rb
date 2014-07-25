module CG
  class Runner
    def initialize(arguments, stdin, stdout)
      @arguments = arguments
      @stdin = stdin
      @stdout = stdout
      @game = CG::Game.new
    end
    
    def run
      Config.in_stream = @stdin
      Config.out_stream = @stdout
      Config.delay = 0.6
      parse_options
      @game.start
    end

    def connect(dbfile='db/cricket.db')
    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3", 
      :database => dbfile
    )
    end
  end
end