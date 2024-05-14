require "csv"
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i 


if memo_type != 1 && memo_type != 2
  return puts "入力値が不正です。「1」か「2」を入力してください。"
end


def write_csv(file_name)
  CSV.open("#{file_name}.csv", "w") do |memo|
    memo << readlines.map { |l| l.chomp } 
  end
end


def clear_csv(file_name)
  File.truncate("#{file_name}.csv", 0)
end


def create_csv
  puts "拡張子を除いたファイルを入力してください。"

  file_name = gets.chomp 

  
  if File.exist?("#{file_name}.csv")
    return puts "該当のファイルは既に作成されています。"
  end

  puts "メモしたい内容を記入してください。"
  puts "完了したら、Ctrl + Dを押してください。"

  write_csv(file_name)
end


def edit_csv
  puts "編集をするファイル名を入力してください。"

  file_name = gets.chomp


  unless File.exist?("#{file_name}.csv")
    return puts "お探しのファイルは存在しません。"
  end

  clear_csv(file_name)

  puts "メモしたい内容を記入してください。"
  puts "完了したら、Ctrl + Dを押してください。"

  write_csv(file_name)
end

if memo_type == 1
  create_csv
elsif memo_type == 2
  edit_csv
end