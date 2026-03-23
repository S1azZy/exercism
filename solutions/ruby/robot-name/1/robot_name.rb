=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end

require 'securerandom'

class Robot
  ROBOT_NAMES = Set.new
  DICTIONARY = ('A'..'Z').to_a.freeze

  def self.forget
    ROBOT_NAMES.clear
  end

  def initialize
    set_new_name
  end

  def reset
    ROBOT_NAMES.delete(name)

    set_new_name
  end

  def set_new_name
    new_unique_name = unique_name
    ROBOT_NAMES << new_unique_name
    @name = new_unique_name
  end

  attr_reader :name

  private

  def unique_name
    new_name = nil
    loop do
      new_name = get_random_name

      break unless ROBOT_NAMES.include?(new_name)
    end

    new_name
  end

  def get_random_name
    part1 = [DICTIONARY.sample, DICTIONARY.sample].join
    part2 = [rand(9), rand(9), rand(9)].join

    "#{part1}#{part2}"
  end
end