class Person

	attr_accessor :bank_account, :happiness, :hygiene

	def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
		@name = name
		@bank_account = bank_account
		@happiness = happiness
		@hygiene = hygiene
	end

	def name
		@name
	end

	def bank_account=(amount)
		@bank_account += amount
	end

	def happiness=(index)
		if index > 10
			@happiness = 10
		elsif index < 1
			@happiness = 0
		else
			@happiness = index
		end
	end

	def hygiene=(index)
		if index > 10
			@hygiene = 10
		elsif index < 1
			@hygiene = 0
		else
			@hygiene = index
		end
	end

	def happy?
		if @happiness > 7
			return true
		else
			return false
		end
	end

	def clean?
		if @hygiene > 7
			return true
		else
			return false
		end
	end

	def get_paid(salary)
		@bank_account += salary
		return 'all about the benjamins'
	end

	def take_bath
		self.hygiene=(@hygiene += 4)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene=(@hygiene -= 3)
		self.happiness=(@happiness += 2)
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness=(@happiness += 3)
		friend.happiness += 3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		if topic == "politics"
			self.happiness=(@happiness -= 2)
			friend.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness=(@happiness += 1)
			friend.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end

end
