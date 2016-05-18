
class Player 
	attr_accessor :name, :response, :cash

	def initialize(name)
		@name = name
		@cash = 100
	end
end



class Game 
	attr_accessor :c3, :c2, :c1 
	def initialize
		@c1 = card1
		@c2 = card2
		@c3 = card3
	end

	def card1
		c1 = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
		return c1
	end

	def card2
		c2 = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
		return c2
	end

	def card3
		c3 = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
		return c3
	end

	def results
	if @c2 > @c3 && @c2 < @c1  
		puts @c3, @c2, @c1
		return "Player wins"
	elsif @c2 < @c3 && @c2 > @c1
		puts @c3, @c2, @c1
		return "Player wins"
	else
		puts @c3, @c2, @c1
		return "Player Loses"
	end

end
end






