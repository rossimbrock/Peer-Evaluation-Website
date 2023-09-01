#Created By: Ross Imbrock
#Creation Date: 12/03/22 
class TechTaskEvaluationsController < ApplicationController
  before_action :set_tech_task_evaluation, only: %i[ show edit update destroy ]

  # GET /tech_task_evaluations or /tech_task_evaluations.json
  def index
    @tech_task_evaluations = TechTaskEvaluation.all
  end

  # GET /tech_task_evaluations/1 or /tech_task_evaluations/1.json
  def show
  end

  # GET /tech_task_evaluations/new
  def new
    @tech_task_evaluation = TechTaskEvaluation.new
  end

  # GET /tech_task_evaluations/1/edit
  def edit
  end

  # POST /tech_task_evaluations or /tech_task_evaluations.json
  def create
    #Allowing all params for :teamid to work properly
    params.permit!
    @tech_task_evaluation = TechTaskEvaluation.new(tech_task_evaluation_params)

    respond_to do |format|
      if @tech_task_evaluation.save
        format.html { redirect_to tech_task_evaluation_url(@tech_task_evaluation), notice: "Tech task evaluation was successfully created." }
        format.json { render :show, status: :created, location: @tech_task_evaluation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tech_task_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_task_evaluations/1 or /tech_task_evaluations/1.json
  def update
    respond_to do |format|
      if @tech_task_evaluation.update(tech_task_evaluation_params)
        format.html { redirect_to tech_task_evaluation_url(@tech_task_evaluation), notice: "Tech task evaluation was successfully updated." }
        format.json { render :show, status: :ok, location: @tech_task_evaluation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tech_task_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_task_evaluations/1 or /tech_task_evaluations/1.json
  def destroy
    @tech_task_evaluation.destroy

    respond_to do |format|
      format.html { redirect_to tech_task_evaluations_url, notice: "Tech task evaluation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_task_evaluation
      @tech_task_evaluation = TechTaskEvaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tech_task_evaluation_params
      params.require(:tech_task_evaluation).permit(:overall, :research, :presentation, :best_qualities, :improve_on, :professor, :other, :teamid)
    end
end
