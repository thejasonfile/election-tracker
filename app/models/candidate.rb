class Candidate < ApplicationRecord
  has_many :states
  has_many :votes, through: :states

  attr_accessor :votes_needed

  def votes_needed
    270 - self.electoral_votes
  end

  def calculate_votes
    states = State.where(candidate_id: self.id)
    votes = states.map { |state| state.electoral_votes}.sum
    self.electoral_votes = votes
    self.save
  end


end
