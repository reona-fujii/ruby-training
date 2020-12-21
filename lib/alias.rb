# エイリアスメソッド-------------------
class User
  def hello
    'Hello'
  end
  
alias greeting hello

end
user = User.new
puts user.hello
puts user.greeting
# ---------------------------------------

# ネストしたクラスの定義-----------------
class User
  class BloodType
    attr_reader :type
    
    def initialize(type)
      @type = type
    end
  end
end

blood_type = User::BloodType.new('B')
puts blood_type.type
# ------------------------------------------

# モンキーパッチ（既存メソッドへの上書き）----
class User
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}"
  end
end

class User
  alias hello_original hello
  
  def hello
    "#{hello_original}じゃなくて、#{@name}さん、こんにちは"
  end
end

user = User.new('Alice')
puts user.hello
# -----------------------------------------------------------