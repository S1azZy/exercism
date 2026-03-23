class HighScores

  attr_reader :scores

  def initialize(scores)
    @scores = scores.dup.freeze
  end

  def latest
    @latest ||= scores.last
  end

  def personal_best
    @personal_best ||= scores.max
  end

  def personal_top
    @personal_top ||= scores.sort { |x, y| y <=> x }.slice(0, 3)
  end

  def report
    personal_best_report =
      if latest == personal_best
        "That's your personal best!"
      else
        "That's #{personal_best - latest} short of your personal best!"
      end

    "Your latest score was #{latest}. #{personal_best_report}"
  end
end