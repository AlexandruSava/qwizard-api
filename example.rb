# frozen_string_literal: true

class FizzBuzz
  @@count_fizz = 0
  @@count_buzz = 0

  def initialize(number)
    @n = number
  end

  def play
    (1..@n).each do |i|
      if (i % 15).zero?
        puts 'fizzBuzz'
        @@count_fizz += 1
        @@count_buzz += 1
      elsif (i % 3).zero?
        puts 'fizz'
        @@count_fizz += 1
      elsif (i % 5).zero?
        puts 'buzz'
        @@count_buzz += 1
      else
        puts i
      end
    end
  end

  def self.fizz_count
    puts @@count_fizz
  end

  def self.buzz_count
    puts @@count_buzz
  end

  def self.reset_count
    @@count_buzz = 0
    @@count_fizz = 0
  end
end

a = FizzBuzz.new(30)
a.play
puts ''
# 10 6

b = FizzBuzz.new(15)
b.play
puts ''
# 15 9

FizzBuzz.fizz_count
FizzBuzz.buzz_count
