# frozen_string_literal: true

class FizzBuzz
  class <<self
    attr_accessor :count_buzz, :count_fizz
  end

  def initialize(number)
    @n = number
  end

  def treat_15_div
    puts 'fizzBuzz'
    FizzBuzz.count_buzz = (FizzBuzz.count_buzz || 0) + 1
    FizzBuzz.count_fizz = (FizzBuzz.count_fizz || 0) + 1
  end

  def treat_5_div
    puts 'buzz'
    FizzBuzz.count_buzz = (FizzBuzz.count_buzz || 0) + 1
  end

  def treat_3_div
    puts 'fizz'
    FizzBuzz.count_fizz = (FizzBuzz.count_fizz || 0) + 1
  end

  # rubocop:disable Metrics/MethodLength
  def play
    (1..@n).each do |i|
      if (i % 15).zero?
        treat_15_div
      elsif (i % 3).zero?
        treat_3_div
      elsif (i % 5).zero?
        treat_5_div
      else
        puts i
      end
    end
  end
  # rubocop:enable Metrics/MethodLength

  def self.reset_count
    FizzBuzz.count_buzz = 0
    FizzBuzz.count_fizz = 0
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

puts "FizzCount: #{FizzBuzz.count_fizz}"
puts "BuzzCount: #{FizzBuzz.count_buzz}"
