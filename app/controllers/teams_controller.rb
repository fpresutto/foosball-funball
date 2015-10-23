class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all.order("created_at DESC")
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(teams_params)

    if @team.save
      redirect_to @team
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @team.update(teams_params)
      redirect_to @team
    else
      render "edit"
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def teams_params
    params.require(:team).permit(:name)
  end

  def find_team
    @team= Team.find(params[:id])
  end

end