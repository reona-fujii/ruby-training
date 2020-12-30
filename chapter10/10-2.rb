def greeting
  puts 'おはよう'
  if block_given?
    yield
  end
  puts 'こんばんわ'
end

greeting

greeting do
  puts 'こんにちわ'
end