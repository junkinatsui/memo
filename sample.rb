require "csv" 

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
memo_type = gets.to_i 

if memo_type === 1
  puts "拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  
  puts"メモしたい内容を記入してください"
  puts"完了したらCtrl + Dをおします。"
  imput_memo = STDIN.read.chomp
  
  CSV.open("#{file_name}.csv" , "w" ) do |csv|
  csv.puts["#{imput_memo}"]
  end
  
elsif memo_type === 2
  puts "拡張子を除いた既存ファイル名を入力してください。"
  file_name = gets.chomp
  
  begin
  puts CSV.read("#{file_name}.csv")
  rescue
  puts "存在しないファイルです。"
  else
  puts "編集内容を記入してください。"
  puts "完了したらCtrl + Dをおします。"
  imput_memo = STDIN.read.chomp
  
  CSV.open("#{file_name}.csv" , "w" ) do |csv|
  csv.puts ["#{imput_memo}"]
  end
  end

else
  puts "1か2の数字を入力してください"
end


puts "拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp

    puts "メモしたい内容を記入してください。"
    puts "完了したらCtrl + Dを押します。"

    contents = STDIN.read.chomp

    CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts["#{contents}"]
    end



elsif memo_type == 2
    puts "メモしたい内容を記入してください。"
    puts "完了したらCtrl + Dを押します。"

    contents = STDIN.read

    CSV.open("#{file_name}.csv" , "a") do |csv|
     csv.puts["#{contents}"]
    end

else
    puts "1か2を入力してください"
    return
end