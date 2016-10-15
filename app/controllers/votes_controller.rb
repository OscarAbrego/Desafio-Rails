class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  def index
    @votes =  Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    return redirect_to votes_path if @vote.save
    render :new
  end

  def edit
  end

  def update
    return redirect_to items_path if @vote.update(vote_params)
    render :edit

  end

  def show
  end

  def destroy
    @vote.destroy()
    redirect_to votes_path
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:email, :heroe)
  end
end
