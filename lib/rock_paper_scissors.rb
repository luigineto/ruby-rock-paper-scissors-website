class String
	define_method(:jo_ken_po) do
		user_choice = self.to_i()
		computer_choice = rand(0..2)

		case user_choice
		when user_choice.==(computer_choice)
			return "draw"
		when user_choice.==(0)
			if computer_choice.==(1)
				return "you loose"
			else
				return "you win"
			end
		when user_choice.==(1)
			if computer_choice.==(2)
				return "you loose"
			else
				return "you win"
			end
		when user_choice.==(3)
			if computer_choice.==(0)
				return "you loose"
			else
				return "you win"
			end
		end
	end
end