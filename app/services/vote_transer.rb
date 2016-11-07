class VoteTransfer

  attr_reader :state, :candidate

  def initialize(state, candidate)
    @state = state
    @candidate = candidate
  end

  def run
    @candidate.electoral_votes + @state.electoral_votes
  end

end