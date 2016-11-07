class Candidate < ApplicationRecord
  has_many :states
  has_many :votes, through: :states

  attr_accessor :votes_needed

  def votes_needed
    270 - self.electoral_votes
  end

  def tally_votes
    votes = 0
    states = State.where(winner: self.name)
    states.each do |state| 
      votes += state.electoral_votes
    end
    self.electoral_votes = votes
  end


end
