# def method_1
#   puts 'method_1 Start'
#   begin
#     method_2
#   rescue
#     puts '例外発生'
#   end
#   puts 'method_1 end.'
# end

# def method_2
#   puts 'method_2 Start'
#   method_3
#   puts 'method_2 end.'
# end

# def method_3
#   puts 'method_3 start'
#   1/0
#   puts 'method_3 end'
# end

# method_1

retry_count = 0
begin
  puts '処理を開始'
  1/0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします(#{retry_count}回目)"
    retry
  else
    puts '失敗しました'
  end
end