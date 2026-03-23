=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end

class Robot
  @@robot_names = []

  def initialize
    set_new_name
  end

  def reset
    set_new_name
  end

  def set_new_name
    @name = @@robot_names.pop
  end

  attr_reader :name

  private

  def self.forget
    @@robot_names = ('AA000'..'ZZ999').to_a.shuffle
  end
end