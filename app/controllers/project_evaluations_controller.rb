#Author: Ross Imbrock
#Created on: 11/29/22
class ProjectEvaluationsController < ApplicationController
  before_action :set_project_evaluation, only: %i[ show edit update destroy ]

  # GET /project_evaluations or /project_evaluations.json
  def index
    @project_evaluations = ProjectEvaluation.all
  end

  # GET /project_evaluations/1 or /project_evaluations/1.json
  def show
  end

  # GET /project_evaluations/new
  def new
    @project_evaluation = ProjectEvaluation.new
  end

  # GET /project_evaluations/1/edit
  def edit
  end

  # POST /project_evaluations or /project_evaluations.json
  def create
    #Allowing all params for :teamid to work properly
    params.permit!
    @project_evaluation = ProjectEvaluation.new(project_evaluation_params)
    
    respond_to do |format|
      if @project_evaluation.save
        format.html { redirect_to project_evaluation_url(@project_evaluation), notice: "Project evaluation was successfully created." }
        format.json { render :show, status: :created, location: @project_evaluation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_evaluations/1 or /project_evaluations/1.json
  def update
    respond_to do |format|
      if @project_evaluation.update(project_evaluation_params)
        format.html { redirect_to project_evaluation_url(@project_evaluation), notice: "Project evaluation was successfully updated." }
        format.json { render :show, status: :ok, location: @project_evaluation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_evaluations/1 or /project_evaluations/1.json
  def destroy
    @project_evaluation.destroy

    respond_to do |format|
      format.html { redirect_to project_evaluations_url, notice: "Project evaluation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_evaluation
      @project_evaluation = ProjectEvaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_evaluation_params
      params.require(:project_evaluation).permit(:overall, :implementation, :documentation, :testing, :meeting, :best_qualities, :improve_on, :professor, :other, :teamid)
    end
end
