class State < ApplicationRecord
  belongs_to :candidate

  def self.all_electoral_votes
    State.sum(:electoral_votes)
  end

end
