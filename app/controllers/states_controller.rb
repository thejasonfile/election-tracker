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
    byebug
    redirect_to @state
  end

  private

  def state_params
    params.require(:state).permit(:name, :electoral_votes, :predicted, :picture_url, :candidate_id)
  end

end
