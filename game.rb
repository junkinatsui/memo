

def janken
    puts "じゃんけん"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    my_hand = gets.to.i

    you_hand = rand(3)

    puts "ホイ!"
    puts "----------"

    hands = {0 => グー, 1 => チョキ, 2 => パー }

    puts "あなた:#{hands[my_hand]}\n相手:#{hands[you_hand]}"

    case case_pattern
    when my_hand == you_hand
        

    if my_hands >= 4
        puts "0~3の数字を入力してください"
        return
    end
end