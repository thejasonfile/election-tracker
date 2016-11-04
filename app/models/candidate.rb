class Candidate < ApplicationRecord
  has_many :states

  attr_accessor :votes_needed

  def votes_needed
    270 - self.electoral_votes
  end
end
