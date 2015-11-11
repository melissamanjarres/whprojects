class TeamrelationshipsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def create
    @team = Team.find(params[:teamrelationship][:team_id])
    current_user.join!(@team)
    redirect_to current_user
  end

  def destroy
    @team = Teamrelationship.find(params[:id]).team
    current_user.leave!(@team)
    redirect_to current_user
  end

  
end
