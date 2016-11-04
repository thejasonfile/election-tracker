class WelcomeController < ApplicationController

  def index
    @candidates = Candidate.all
    @states = State.all
  end

end
