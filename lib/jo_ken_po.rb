class String
	define_method(:jo_ken_po) do
		user_choice = self.to_i()

		#only for Rspec tests
		#computer_choice = srand(012)
		
		computer_choice = Random.new.rand(0..2)

		result = []

		case computer_choice
		when 0
			result.push("rock")
		when 1
			result.push("paper")
		when 2
			result.push("scissors")
		end

		case user_choice
		when 0
			result.push("rock")
			result.push(computer_choice.eql?(2))
		when 1
			result.push("paper")
			result.push(computer_choice.eql?(0))
		when 2
			result.push("scissors")
			result.push(computer_choice.eql?(1))
		end

		if result.at(2)
			result.pop
			result.push("You win")
		else
			result.pop
			result.push("You loose")
		end

		if user_choice.eql?(computer_choice)
			result.pop
			result.push("Draw")
		end

		result
	end
end