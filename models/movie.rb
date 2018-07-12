require_relative("../db/sql_runner")

class Movie

attr_reader :id
attr_accessor :title, :genre

def initialize(options)
  @id = options['id'].to_i if options['id']
  @title = options['title']
  @genre = options['genre']
end

def save()
  sql="INSERT INTO movies (title, genre) VALUES ($1, $2) RETURNING id"
  values =[@title, @genre]
  movie = SqlRunner.run(sql, values).first
  @id = movie['id'].to_i
end

def self.delete_all()
  sql = "DELETE FROM movies"
  SqlRunner.run(sql)
end

def stars()
  sql ="SELECT stars.* FROM stars INNER JOIN castings ON stars.id = castings.star_id WHERE movie_id=$1"
  values=[@id]
  stars =SqlRunner.run(sql,values)
  result = stars.map {|star| Star.new(star)}
  return result
end


end
