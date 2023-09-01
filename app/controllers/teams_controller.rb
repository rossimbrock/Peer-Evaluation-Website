#Owner: Charles Kluznik
#Date: 11/29/2022
class TeamsController < ApplicationController
  before_action :set_team, only: %i[ show edit update destroy ]

  # GET /teams/new_member
  def new_member
    @team = Team.find(params[:id])
  end

  # POST /teams/:id/new_member
  #Add a new member to the team, updating the students_teams join table
  def submit_member
    params.permit!
    @team = Team.find(params["id"]) #get the matching team
    @student = Student.find_by(namedotnumber: params["changes"]["student_id"]) #get the matching student in the drop down
    if ActiveModel::Type::Boolean.new.cast(params["changes"]["add"])
      @student.teams << @team unless @student.teams.include? @team #update the students_teams join table (add student)
      @removed = false
    else
      @student.teams.delete(@team) if @student.teams.include? @team #update the students_teams join table (remove student)
      @removed = true
    end
    respond_to do |format|
      if @student.teams.include? @team
        format.html { redirect_to team_url(@team), notice: "Student was successfully added." }
        format.json { render :show, status: :created, location: @team }
      elsif (@removed unless @student.teams.include? @team)
        format.html { redirect_to team_url(@team), notice: "Student was successfully removed." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /teams or /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1 or /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create
    params.permit!
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to team_url(@team), notice: "Team was successfully created." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    params.permit!
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to team_url(@team), notice: "Team was successfully updated." }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url, notice: "Team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.fetch(:team, {})
    end
end
