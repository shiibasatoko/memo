 require "csv"
 
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 memo_type = gets.chomp.to_i

 if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  memo_text = gets.chomp.to_s
  puts "ファイル名[#{memo_text}.csv]" + "メモの内容を入力してください。"
  puts "完了したら[Ctrl+D]をおします。"
  CSV.open("#{memo_text}.csv","w")do |csv|
    content = readlines.map(&:chomp)
   csv << content
 end
  elsif  memo_type == 2
    puts "編集したいメモの拡張子を除いたファイル名を入力してください"
    memo_text_d = gets.chomp.to_s
    puts "ファイル名[#{memo_text_d}.csv]を編集中"
    puts "完了したら[Ctrl+D]をおします。"
  CSV.open("#{memo_text_d}.csv","a")do |csv|
   content = readlines.map(&:chomp)
   csv << content
  end
  else
   puts "エラーです。1 or 2 は半角で入力してください"
  end

  
  
  
