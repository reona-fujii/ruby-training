class Product
  DEFAULT_PRICE = 0
  DEFAULT_PRICE = 1000
end

puts Product::DEFAULT_PRICE
Product::DEFAULT_PRICE = 10000
puts Product::DEFAULT_PRICE

$program_name = 'Awesome program'

class Program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end

puts Program.name
program = Program.new('Super program')
puts program.name
puts Program.name
puts $program_name
