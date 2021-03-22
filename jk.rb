puts "最初はグーじゃんけん・・・・"

def janken
  puts "0(グー)1(チョキ)2(パー)"

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return true
    
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あっち向いてホイ！"
      puts "0(上) 1(下) 2(右) 3(左)"
      player_hand = gets.to_i
      program_hand = rand(4)
      
      if player_hand == program_hand
      fingers = ["0(上)","1(下)","2(右)","3(左)"]
      puts "私→#{fingers[player_hand]},相手→#{fingers[program_hand]}"
      puts "あなたの勝ちです"
      
      elsif 
        player_hand != program_hand
        fingers = ["0(上)","1(下)","2(右)","3(左)"]
      puts "私→#{fingers[player_hand]},相手→#{fingers[program_hand]}"
        puts "あいこで"
        return true
    end 
    


  else(player_hand == 0 && program_hand == 2)||(player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)
    puts "あっち向いてホイ！"
      puts "0(上) 1(下) 2(右) 3(左)"
      player_hand = gets.to_i
      program_hand = rand(4)
      
      if player_hand == program_hand
        
      fingers = ["0(上)","1(下)","2(右)","3(左)"]
      puts "私→#{fingers[player_hand]},相手→#{fingers[program_hand]}"
      puts "あなたの負けです"
      
      elsif
        player_hand != program_hand
        fingers = ["0(上)","1(下)","2(右)","3(左)"]
      puts "私→#{fingers[player_hand]},相手→#{fingers[program_hand]}"
        puts "あいこで"
        return true
    end 
  end
end



next_game = true

while next_game
  next_game = janken
end
