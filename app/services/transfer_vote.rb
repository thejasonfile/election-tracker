class TransferVote

  attr_reader :state, :candidate_to, :candidate_from

  def initialize(state, candidate_to, candidate_from)
    @state = state
    @candidate_to = Candidate.find_by(name: candidate_to)
    @candidate_from = Candidate.find(candidate_from)
    byebug
  end

  def run
    votes = @state.electoral_votes
    @candidate_to.electoral_votes += votes
    @candidate_to.save
    @candidate_from.electoral_votes -= votes
    @candidate_from.save
    byebug
  end

end