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
    @transfer = TransferVote.new(@state, params[:state][:winner], @state.candidate_id)
    @transfer.run()
    @state.update(state_params)
    redirect_to root_path
  end

  private

  def state_params
    params.require(:state).permit(:name, :electoral_votes, :predicted, :picture_url, :candidate_id, :called, :winner)
  end

end
