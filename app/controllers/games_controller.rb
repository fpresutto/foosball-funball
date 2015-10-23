class GamesController < ApplicationController
  before_action :find_game, only: [:show]

  def index
    @games = Game.all.order("created_at DESC")
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(games_params)

    if @game.save
      redirect_to @game
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @game.update(games_params)
      redirect_to @game
    else
      render "Edit"
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def games_params
    params.require(:game).permit(:winning_team_id, :losing_team_id, :winning_team_score, :losing_team_score)
  end

  def find_game
    @game= Game.find(params[:id])
  end

end