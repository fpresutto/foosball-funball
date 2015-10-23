class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    if params[:team].blank?
    @users = User.all.order("created_at DESC")
    else
    @team_id = Team.find_by(name: params[:team]).id
    @users = User.where(team_id: @team_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to @user
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @user.update(users_params)
      redirect_to @user
    else
      render "Edit"
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :team_id)
  end

  def find_user
    @user= User.find(params[:id])
  end

end