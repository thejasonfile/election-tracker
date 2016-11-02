class Candidate < ApplicationRecord
  has_many :states

  def votes_needed
    270 - self.electoral_votes
  end
end
