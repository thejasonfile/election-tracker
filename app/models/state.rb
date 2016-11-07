class State < ApplicationRecord
  belongs_to :candidate
  has_many :votes

  def self.all_electoral_votes
    State.sum(:electoral_votes)
  end

  def self.remaining_electoral_votes
    sql = <<-SQL
      SELECT SUM(states.electoral_votes) FROM states
      WHERE states.winner = "Not Called"
    SQL
    find_by_sql(sql)
  end

  def self.hc_electoral_votes
    sql = <<-SQL
      SELECT SUM(states.electoral_votes) FROM states
      WHERE states.winner = "Hillary Clinton"
    SQL
    find_by_sql(sql)
  end

  def self.dt_electoral_votes
    sql = <<-SQL
      SELECT SUM(states.electoral_votes) FROM states
      WHERE states.winner = "Not Called"
    SQL
    find_by_sql(sql)
  end

end
