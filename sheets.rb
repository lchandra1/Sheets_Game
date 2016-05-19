



class Game 
	attr_accessor :c3, :c2, :c1, :cash
	def initialize
		@c1 = card1
		@c2 = card2
		@c3 = card3
		@cash = 100
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
		@cash += 10
	elsif @c2 < @c3 && @c2 > @c1
		puts @c3, @c2, @c1
		return "Player wins"
		@cash += 10
	else
		puts @c3, @c2, @c1
		return "Player Loses"
		@cash -= 10
	end

end
end






