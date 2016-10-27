class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
  
  end

  def new
    @state = State.new
  end

  def create
    @state = State.create(post_params(:name, :electoral_votes, :predicted, :called, :picture_url))
    byebug
    redirect_to @state
  end

  def post_params(*args)
    params.require(:state).permit(*args)
  end

end
