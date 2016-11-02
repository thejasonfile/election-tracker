class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.create(candidate_params)
    redirect_to @candidate
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    @candidate.update(candidate_params)
    redirect_to @candidate
  end

  def destroy

  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :party)
  end

end
