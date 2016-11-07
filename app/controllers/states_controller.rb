class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end

  def new
    @state = State.new
  end

  def create
    @state = State.create(state_params)
    redirect_to @state
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])
    candidate_id = Candidate.find_by(name: params[:state][:winner]).id
    @state.update(winner: params[:state][:winner], candidate_id: candidate_id)
    Candidate.all.each do |candidate| candidate.calculate_votes end
    redirect_to root_path
  end

  private

  def state_params
    params.require(:state).permit(:name, :electoral_votes, :predicted, :picture_url, :candidate_id, :called, :winner)
  end

end
