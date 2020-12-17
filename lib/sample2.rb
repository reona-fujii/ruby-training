# foods = ['ピーマン', 'トマト', 'セロリ']
# count = 0
# foods.each do |food|
#   print "#{food}は好きですか？"
#   answer = ['はい', 'いいえ'].sample
#   puts answer
#   count += 1
#   redo if answer != 'はい' && count < 2
#   count = 0
# end

# text = <<-TEXT
# def hello(name)
#   puts "Hello, \#{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')
# TEXT
# puts text
# puts text.gsub(/^[ \t]+$/, '')

if '123-4567' =~ /\d{3}-\d{4}/
    puts 'マッチしました'
else
    puts 'マッチしませんでした'
end

text = '私の誕生日は1999年2月28日です。'
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
    puts "#{year}/#{month}/#{day}"
end

'1989年3月8日 2001年4月8日'.scan(/(\d+)年(\d+)月(\d+)日/)

text='09-1234-1234'

case text
when /^\d{3}-\d{4}$/
    puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
    puts '日付です'
when /^\d+-\d+-\d+$/
    puts '電話番号です'
end