module Art
	Size = 75
	def self.stars
		puts "*"*Size
	end
	def self.up
		puts "^"*Size
	end
	def self.dash
		puts "-"*Size
	end
	def self.q
		puts "?"*Size
	end
	def self.ex
		puts "!"*Size
	end
	def self.space
		puts " "*Size
	end
	def self.theRun
		puts"::::::::::: :::    ::: ::::::::::       :::::::::  :::    ::: ::::    ::: 
    :+:     :+:    :+: :+:              :+:    :+: :+:    :+: :+:+:   :+: 
    +:+     +:+    +:+ +:+              +:+    +:+ +:+    +:+ :+:+:+  +:+ 
    +#+     +#++:++#++ +#++:++#         +#++:++#:  +#+    +:+ +#+ +:+ +#+ 
    +#+     +#+    +#+ +#+              +#+    +#+ +#+    +#+ +#+  +#+#+# 
    #+#     #+#    #+# #+#              #+#    #+# #+#    #+# #+#   #+#+# 
    ###     ###    ### ##########       ###    ###  ########  ###    ####"
	end
	def self.run
		puts".########..##.....##.##....##
.##.....##.##.....##.###...##
.##.....##.##.....##.####..##
.########..##.....##.##.##.##
.##...##...##.....##.##..####
.##....##..##.....##.##...###
.##.....##..#######..##....##"
	end
	def self.hit
		puts" ██████╗ █████╗ ████████╗██╗
██╔════╝██╔══██╗╚══██╔══╝██║
██║     ███████║   ██║   ██║
██║     ██╔══██║   ██║   ╚═╝
╚██████╗██║  ██║   ██║   ██╗
 ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝"
 	end
 	def self.youWin
 	end
 	def self.gameOver
 		puts" ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗ 
██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗
██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝
██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗
╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║
 ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝"
  end
  def self.youWin
  	puts"██╗   ██╗ ██████╗ ██╗   ██╗    ██╗    ██╗██╗███╗   ██╗
╚██╗ ██╔╝██╔═══██╗██║   ██║    ██║    ██║██║████╗  ██║
 ╚████╔╝ ██║   ██║██║   ██║    ██║ █╗ ██║██║██╔██╗ ██║
  ╚██╔╝  ██║   ██║██║   ██║    ██║███╗██║██║██║╚██╗██║
   ██║   ╚██████╔╝╚██████╔╝    ╚███╔███╔╝██║██║ ╚████║
   ╚═╝    ╚═════╝  ╚═════╝      ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝"
 	end
 	def self.progress(i)
 		left = Size*i/100
 		right = Size-(Size*i/100)
 		puts "="*Size
		print " "*left,"*"," "*right,"\n"
 		puts "="*Size
 	end
end