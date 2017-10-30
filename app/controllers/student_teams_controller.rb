class StudentTeamsController < ApplicationController
  before_action :set_student_team, only: [:show, :edit, :update, :destroy]

  # GET /student_teams
  # GET /student_teams.json
  def index
    @student_teams = StudentTeam.all
  end

  # GET /student_teams/1
  # GET /student_teams/1.json
  def show
  end

  # GET /student_teams/new
  def new
    @student_team = StudentTeam.new
  end

  # GET /student_teams/1/edit
  def edit
  end

  # POST /student_teams
  # POST /student_teams.json
  def create
    @student_team = StudentTeam.new(student_team_params)

    respond_to do |format|
      if @student_team.save
        format.html { redirect_to @student_team, notice: 'Student team was successfully created.' }
        format.json { render :show, status: :created, location: @student_team }
      else
        format.html { render :new }
        format.json { render json: @student_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_teams/1
  # PATCH/PUT /student_teams/1.json
  def update
    respond_to do |format|
      if @student_team.update(student_team_params)
        format.html { redirect_to @student_team, notice: 'Student team was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_team }
      else
        format.html { render :edit }
        format.json { render json: @student_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_teams/1
  # DELETE /student_teams/1.json
  def destroy
    @student_team.destroy
    respond_to do |format|
      format.html { redirect_to student_teams_url, notice: 'Student team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_team
      @student_team = StudentTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_team_params
      params.require(:student_team).permit(:student_id, :team_id)
    end
end
