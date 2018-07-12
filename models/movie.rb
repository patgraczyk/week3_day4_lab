require_relative("../db/sql_runner")

attr_reader :id
attr_accessor :tile, :genre

class Movie

def initialize
  @id = options['id'].to_i if options['id']
  @title = options['title']
  @genre = options['genre']
end


end
