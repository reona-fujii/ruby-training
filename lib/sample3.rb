# class User
#   attr_reader :first_name, :last_name, :age

#   def initialize(first_name, last_name, age)
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end
# end


# users = []
# users << {first_name: 'Alice', last_name: 'Ruby', age: 20}
# users << {first_name: 'Bob', last_name: 'Python', age: 30}

# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end


# users.each do |user|
#   puts "氏名: #{full_name(user)}、 年齢: #{user[:age]}"
# end

class User
  def initialize(name)
    @name = name
  end

  def hello
    shuffled_name = @name.chars.shuffle.join
    "hello, I am #{shuffled_name}"
  end
end
user = User.new('Alice')
puts user.hello