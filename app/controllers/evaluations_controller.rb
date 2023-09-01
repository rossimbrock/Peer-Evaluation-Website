class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: %i[ show edit update destroy ]

  # GET /evaluations or /evaluations.json
  # Calls project and tech tasks evaluations for viewing
  def index
    @evaluations = Evaluation.all
    @project_evaluations = ProjectEvaluation.all
    @tech_task_evaluations = TechTaskEvaluation.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluation_params
      params.fetch(:evaluation, {})
    end
end
