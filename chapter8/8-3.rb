module Loggable
  private
  def log(text)
    puts "[LOG] #{text}"
  end

end

class Product
  # モジュールをミックスイン
  include Loggable
  def title
    log 'title is called.'
    'A great movie'
  end

  # private
  # def log(text)
  #   puts "[LOG] #{text}"
  # end
end

class User
  # クラスメソッドとしてミックスイン
  extend Loggable
  def name
    log 'name is called.'
    'Alice'
  end

  def self.create_users(names)
    log 'create_users is called.'
  end
  # private
  # def log(text)
  #   puts "[LOG] #{text}"
  # end
end

product = Product.new
puts product.title

User.create_users([])
user = User.new
puts user.name