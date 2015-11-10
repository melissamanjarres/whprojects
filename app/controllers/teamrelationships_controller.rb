class TeamrelationshipsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def create
    @team = Team.find(params[:teamrelationship][:team_id])
    current_user.join!(@user)
    redirect_to @user
  end

  def destroy
    @user = Teamrelationship.find(params[:id]).followed
    current_user.leave!(@user)
    redirect_to @user
  end

  
end
