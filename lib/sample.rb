# ダブルクォーテで括ると改行が効く
puts 'こんにちわ\nさようなら'
puts "こんにちわ\nさようなら"

country = 'italy'
if country == 'japan' then puts 'こんにちは'
elsif country == 'US' then puts 'Hello'
elsif country == 'italy' then puts 'ciao'
else '?'
end

def some_method
  <<-text
  これはヒアドキュメントです
  text
end

puts some_method
puts Date.today