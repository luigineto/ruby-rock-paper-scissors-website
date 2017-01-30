class String
	define_method(:jo_ken_po) do
		user_choice = self.to_i()
		computer_choice = rand(0..2)
		result = ""

		case user_choice
		when 0
			result = computer_choice.eql?(2)
		when 1
			result = computer_choice.eql?(0)
		when 2
			result = computer_choice.eql?(1)
		end

		if user_choice.eql?(computer_choice)
			result = "draw"
		end

		result
	end
end