=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament
  def self.tally(data)
    teams = Hash.new { |hash, key| hash[key] = Team.new(key) }

    matches = data.split("\n")
    matches.each do |match|
      (team1_name, team2_name, result) = match.split(";")
      team1 = teams[team1_name]
      team2 = teams[team2_name]

      case result
      when "win"
        team1.add_win
        team2.add_loss
      when "loss"
        team1.add_loss
        team2.add_win
      when "draw"
        team1.add_draw
        team2.add_draw
      end
    end

    result = []
    header = "Team                           | MP |  W |  D |  L |  P\n"
    result << header
    result += teams.values.sort_by(&:position).map(&:to_s)
    
    result.join("")
  end
end

class Team
  attr_reader :name, :win_count, :draw_count, :loss_count

  def initialize(name)
    @name = name 
    @win_count = 0
    @draw_count = 0
    @loss_count = 0
  end

  def position
    [-points, name]
  end

  def points
    win_count * 3 + draw_count
  end

  def mp
    win_count + draw_count + loss_count
  end

  def add_win
    @win_count += 1
  end

  def add_draw
    @draw_count += 1
  end

  def add_loss
    @loss_count += 1
  end

  def to_s
    "#{name.ljust(31)}|  #{mp} |  #{win_count} |  #{draw_count} |  #{loss_count} |#{points.to_s.rjust(3)}\n"
  end
end