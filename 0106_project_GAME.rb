require "./0106_project_game1_methods"
include Game
run = 'yes'
Distance = 25
SpeedAdvantage = 0.7 #less is faster 
SightAdvantage = 0.8 #less is less likely to be seen by cat




puts `clear`
health = 100
speed = 1.0
visibility = 1.0
ascii {Art.theRun}
prompt("In order to get home from your long journey you mush run though the valley \nof 100 cats...with hats.  There are all kinds of cats in this valley and if \n you happen to approach on your journey they will most certainly try to eat \nyou for lunch.","Unless, you can knock off their hat.")
road = question("Do you want to take the 'high' road or the 'low' road?","Not a path to take!","high","low")
case road
	when 'high'
		prompt("Excellent, we'll take the High road there's a chace we'll stay outta sight\n, but we'll be slower.")
		visibility = SightAdvantage
	else 
		prompt("Excellent, take the low road we can run faster but more cats can see us")
		speed = SpeedAdvantage
end
prompt("Before you enter the valley you see a little shop that my have supplies to help \nyou on your journey home.","The prices are astronomical and it seems you can only afford one item")
weapon = question("Do you want to buy the 'stick', a bag of 'marbles' or the 'catnip'?","That is not a weapon you can buy!","stick","catnip","marbles")
question("If you are ready to go type 'run'","Just type 'run' when you are ready","run")


ascii{Art.run}


travelTime = (speed * Distance).to_i
(1..travelTime).each{ |x|
	break if health <= 0
	i = (x / travelTime.to_f * 100).to_i
	event = rolldice(visibility)
	case event
	when "pass"
		asciiMoving(i,health)
	when "hit"
		ascii{Art.hit}
		action = question("You were attacked by a cat! What do you want to do 'run', 'attack', or 'pet'?", "That's not an option!",'run','attack','pet')
		case action
		when 'pet'
			if weapon != 'catnip'
				prompt("You tired to pet the cat...but he was not feelin it \n and he decided to have you for lunch!")
				health = 0
				next
			else
				prompt("You were able to sooth the cat with catnip and give him \na belly rub.")
				weapon = nil
			end
			question("Do you want to start running again? 'yes'?","type 'yes' to continue",'yes')
		when 'attack'
			if weapon != 'stick'
				health = hurt(health){prompt("You attempt to attack the cat with your hands but you get too close and he \nscratches you","Although you are hurt you managed to scare the cat away")}
			else
				prompt("With your stick in hand you were able to knock off the cat's hat and he \nruns away. Although your stick broke")
				weapon = nil
			end
			next if health <= 0
			question("Do you want to start running again? 'yes'?","type 'yes' to continue",'yes')
			
		when 'run'
			if weapon != 'marbles'
				health = hurt(health){prompt("You attempt to run but you are too slow and you have the cat's full attention.\nHe scratches you but you manage to escape.")}				
			else
				prompt("You throw down all your marbles and the cat is distracted! you get a good \nstart and you are able to escape!")
				weapon = nil
			end
			next if health <= 0
			question("Do you want to start running again? 'yes'?","type 'yes' to continue",'yes')
		end
		puts `clear`
		ascii{Art.run}
	end
}
if (health > 0) 
	ascii{Art.youWin}
else
	prompt("You suffered major injuries and the Cat ate you for lunch.")
	ascii{Art.gameOver}
end
