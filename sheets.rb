
class Player 
	attr_accessor :name, :response, :cash

	def initialize(name)
		@name = name
		@cash = 100
	end
end



class Game 
	def initialize
		@c1 = c1
		@c2 = c2
		
		
	end

	def c1
		c1 = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
		return c1
	end

	def c2
		c2 = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
		return c2
	end

	def c3
		c3 = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
		return c3
	end

	def results
	if @c2 > c3 > c1
		then puts "Player wins"
	end



end


game = Game.new
puts game.c2
puts game.c3
puts game.c1

