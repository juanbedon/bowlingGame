puts "Welcome to my bowling alley. What's your name?: \n"
player = gets.chomp.capitalize

puts "What do you want to do, #{player}?: Send 'P' to play or 'L' to leave."
choice = gets.chomp.upcase

if choice == "P"

  frame = 1
  score = []

  while frame <= 10

    puts "\nRound ##{frame}"
    puts "Send 'T' to throw the ball..."

    while option = gets.chomp.upcase
      case option
      when "T"
        puts "First Try:"
        knockedFirstTry = Random.rand(11)
        if knockedFirstTry == 10
          puts "Strike! You knocked all the #{knockedFirstTry} pins down"
          score.push(knockedFirstTry)
        elsif knockedFirstTry != 10
          puts "You knocked #{knockedFirstTry} pin(s) down"
          puts "Second Try:"
          left = 10 - knockedFirstTry
          knockedSecondTry = Random.rand(left)
          puts "You knocked #{knockedSecondTry} pin(s) down"
          score.push(knockedFirstTry + knockedSecondTry)
        end
        break
      else
        puts "You didn't send 'T', try again."
      end
    end

    frame += 1

    if frame == 11
      strikeIndex = score.each_index.select{ |s| score[s] == 10 }
      strikeBonus1Index = strikeIndex.join.to_i + 1
      strikeBonus1Result1 = score[strikeBonus1Index]
      strikeBonus2Index = strikeIndex.join.to_i + 2
      strikeBonus1Result2 = score[strikeBonus2Index]

      if score.include?(10)
        totalScore = score.map().sum + strikeBonus1Result1 + strikeBonus1Result2
      else
        totalScore = score.map().sum
      end
=begin
      Display information to a graphical approach of how the point system works

      puts "score = #{score}"
      puts "strikeIndex = #{strikeIndex}"
      puts "strikeBonus1Index = #{strikeBonus1Index}"
      puts "strikeBonus1Result1 = #{strikeBonus1Result1}"
      puts "strikeBonus2Index = #{strikeBonus2Index}"
      puts "strikeBonus1Result2 = #{strikeBonus1Result2}"
=end
      puts "Game has ended, you scored: #{totalScore} points\n"
      puts "#{player}, would you like to play again? Send 'P' to play or 'L' to leave."
      option = gets.chomp.upcase
      if option == "P"
        frame = 1
        score = []
      elsif option == "L"
        puts "Nice game, #{player}. See you later."
      else
        puts "You didn't send 'P' or 'L', see you soon."
      end
    end

  end


elsif choice == "L"
  puts "Come back soon, #{player}."
else
  puts "You didn't send 'P' or 'L', see you soon."
end