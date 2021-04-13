require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i

if memo_type == 1 then  # 新規メモ作成
    puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"

    memo_name = gets.chomp + ".csv"  # ファイル名の取得と拡張子の追加

    puts "入力が終わったら、「Control + D」で終了してください。"
    puts "----------"

    memo_main = readlines

    CSV.open(memo_name,'w') do |test|
        test << memo_main
       end

    puts "----------"
    puts "ファイル名：#{memo_name} を作成しました！"

    
elsif memo_type == 2 then   # 既存のメモ編集(追記？)
    puts "既存のメモファイルに追記します。拡張子を除いたファイル名を入力してください。"

    memo_name = gets.chomp + ".csv" # ファイル名の取得と拡張子の追加

    puts "追記内容の入力が終わったら、「Control + D」で終了してください。"
    puts "----------"

    memo_main = readlines

    CSV.open(memo_name,'a') do |test|
        test << memo_main
       end

    puts "----------"
    puts "ファイル名：#{memo_name} を上書きしました！"

else
    puts "半角で1か2を入力してください！！"
end