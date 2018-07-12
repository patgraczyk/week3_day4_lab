require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({'title' => 'Pulp Fiuction', 'genre' => 'Si-Fi'})
movie2 = Movie.new({'title' => 'Kill Bill', 'genre' => 'action'})
movie3 = Movie.new({'title' => 'Charlies Angels', 'genre' => 'action'})
movie1.save()
movie2.save()
movie3.save()

star1 = Star.new({'first_name' => 'Samuel', 'last_name' => 'Jackson'})
star2 = Star.new({'first_name' => 'Uma', 'last_name' => 'Therman'})
star3 = Star.new({ 'first_name' => 'Nick', 'last_name' => 'Nolte'})
star1.save()
star2.save()
star3.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 400})
casting2 = Casting.new({'movie_id' => movie1.id, 'star_id' => star2.id, 'fee' => 200})
casting3 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 550})
casting4 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 7000000})
casting5 = Casting.new({'movie_id' => movie2.id, 'star_id' => star3.id, 'fee' => 5000})
casting6 = Casting.new({'movie_id' => movie3.id, 'star_id' => star1.id, 'fee' => 1000000})
casting1.save()
casting2.save()
casting3.save()
casting4.save()
casting5.save()
casting6.save()

# binding.pry
# nil
