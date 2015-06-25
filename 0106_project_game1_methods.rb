require "./ascii"
include Art
CatSights = 15 #15/100
Delay = 0.3

module Game
	def ascii
		Art.stars
		Art.up
		yield
		Art.up
		Art.stars
		sleep(Delay)
	end
	def asciiMoving(i,health)
		puts`clear`
		Art.stars
		Art.up
		Art.run
		Art.up
		Art.stars
		puts "\n"*2
		puts "Your current health is #{health}"
		puts "\n"
		Art.progress(i)
		puts "\n"*3
		sleep(Delay)
	end
	def prompt(string,*rest)
		Art.dash
		puts string
		if !rest.empty? # print extra lines
			rest.each{ |i|
				sleep(Delay)
				puts "\n",i
			}
			Art.stars
		end
		sleep(Delay*2)
	end
	def question(string,default,*rest)
		begin
			Art.space
			puts string
			Art.q
			Art.space
			answer = gets.chomp.downcase
			if rest.include?(answer)
				Art.ex
				Art.space
				sleep(Delay)
			else
				Art.space
				Art.stars
				puts default
				Art.stars
				Art.space
				sleep(Delay)
			end
		end while !rest.include? (answer)
		puts `clear`
		answer
	end
	def ending(string)
		Art.stars
		Art.stars
		Art.stars
		Art.space						
		puts string
	end
	def rolldice(advantage)
		sleep(Delay/2)
		dice = rand(100)
		if dice > CatSights*advantage
			'pass'
		else
			'hit'
		end
	end
	def hurt(health)
		health -= rand(25..50)
		return health if health <= 0
		yield
		puts "Your health is now at #{health/1}%"
		health
	end
end

