class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.where(user_id: current_user.id)
  end

  def show
    @clubs = Club.where(county: params[:county]).order(:club)
  end

  def new
    @team = Team.new
    @clubs = Club.where(county: 1).order(:club)
  end

  def edit
    @county = County.where(name: @team.county).first
    @clubs = Club.where(county: @county.id).order(:club)
  end

  def create
    @team = Team.new(team_params)

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

  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def update_clubs_list
    county = County.where(name: params[:county]).first
    @clubs = Club.where(county_id: county.id).order(:club)
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:user_id, :level, :county, :club)
    end
end
