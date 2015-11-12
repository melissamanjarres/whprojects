class TeamrelationshipsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def create
    @team = Team.find(params[:teamrelationship][:team_id])
    Notification.create(user_id: current_user.id, tipo: 3, name: current_user.username + " has join a new team " , link: current_user.id)
    current_user.join!(@team)
    redirect_to @team
  end

  def destroy
    @team = Teamrelationship.find(params[:id]).team
    current_user.leave!(@team)
    redirect_to @team
  end

  
end
