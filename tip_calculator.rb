 class TipCalculator
# def initialize()
	def bill
		puts "What is the bill?"

		print "> "
		@bill_amount = gets.chomp.to_f

		if @bill_amount > 0
		   tip
		else
			puts "Please enter a valid number."
			bill
		end
	end

	def tip
		puts "What is the tip percentage?"
		print "> "
		@tip_percentage = gets.chomp.to_f

		if @tip_percentage > 0
			tip_rate	
		else 
			puts "Please enter a valid number"
			tip
		end

	end

	def tip_rate
		@tip_rate_calc = @bill_amount * (@tip_percentage / 100)
		puts "The tip is £#{@tip_rate_calc}" #not defined
		total # DO NOT USE CAPS!! IT WONT RUN!!!
	end
#return the total bill??
	def total 
		@Total_bill = @bill_amount + @tip_rate_calc	
	 	puts "The total bill is £#{@Total_bill}"
	end
end


tc = TipCalculator.new()
tc.bill













