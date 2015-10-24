class MatchesController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
    @matches = Match.all.order("created_at DESC")
  end

  def show
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(matches_params)

    if @match.save
      redirect_to @match
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @match.update(matches_params)
      redirect_to @match
    else
      render "edit"
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_path
  end

  private

  def matches_params
    params.require(:match).permit(:winning_team, :first_game_id, :second_game_id, :third_game_id)
  end

  def find_match
    @match= Match.find(params[:id])
  end

end