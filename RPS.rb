puts "-------------------------------"
puts "じゃんけん..."

def direction_game(judge)
    puts "-------------------------------"
    puts "[#{judge}]方向を指し示して下さい"
    puts "-------------------------------"
    puts "あっち向いて..."
    puts "0(上↑), 1(下↓), 2(左←), 3(右→)"
    player_direction = gets.chomp.to_i
    pc_direction = rand(4)
    puts "ホイ!!"
        
    direction = ["0(上↑)", "1(下↓)", "2(左←)", "3(右→)"]
    puts "-------------------------------"
    puts "あなた: #{direction[player_direction]}"
    puts "相手  : #{direction[pc_direction]}"
        
        if player_direction == pc_direction
            puts "-------------------------------"
            puts "あなたの#{judge}です"
            return false
        else
            puts "-------------------------------"
            puts "もう一度"
            puts "じゃんけん..."
            return true
        end
end


def battle
    puts "0(グー), 1(チョキ), 2(パー)"
    player_rps = gets.chomp.to_i
    pc_rps = rand(3)
    puts "ホイ!!"
    
    hands = ["グー", "チョキ", "パー"]
    puts "-------------------------------"
    puts "あなた: #{hands[player_rps]}"
    puts "相手  : #{hands[pc_rps]}"
    
        if player_rps == pc_rps
            puts "-------------------------------"
            puts "あいこで..."
            return true
        elsif (player_rps == 0 && pc_rps == 1) or (player_rps == 1 && pc_rps == 2) or (player_rps == 2 && pc_rps == 0)
            direction_game("勝ち")    
            
        else
            direction_game("負け")
        end
end


next_game = true
while next_game do
  next_game = battle
end