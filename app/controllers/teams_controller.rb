class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # GET /teams
  # GET /teams.json
  def index
    if params[:search]
      @teams = Team.search(params[:search])
    else
      @teams = Team.all
    end
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @team =  Team.find(params[:id])
    @team_members = @team.users
    @team_project = Project.where("team_id==?", @team.id )
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  def join
    @title = "Join"
    @team = Team.find(params[:id])
    @team_members = @team.users
  end

  def leave
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers
    render 'followers'
  end


  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)
    Notification.create(user_id: current_user.id, tipo: 1, name: current_user.username + " has created a new team " + @team.name, link: current_user.id)
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :team_id, :user_id)
    end
end
