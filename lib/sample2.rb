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

text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')
TEXT
puts text
puts text.gsub(/^[ \t]+$/, '')