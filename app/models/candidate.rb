class Candidate < ApplicationRecord
  has_many :states

  attr_accessor :votes_needed

  def votes_needed
    270 - self.electoral_votes
  end

  def tally_votes
    votes = 0
    democrat_states = State.where(winner: self.name)
    democrat_states.each do |state| 
      votes += state.electoral_votes
    end
    self.electoral_votes = votes
  end


end
