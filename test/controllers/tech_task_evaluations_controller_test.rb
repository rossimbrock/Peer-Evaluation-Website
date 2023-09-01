require "test_helper"

class TechTaskEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_task_evaluation = tech_task_evaluations(:one)
  end

  test "should get index" do
    get tech_task_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_task_evaluation_url
    assert_response :success
  end

  test "should create tech_task_evaluation" do
    assert_difference("TechTaskEvaluation.count") do
      post tech_task_evaluations_url, params: { tech_task_evaluation: { best_qualities: @tech_task_evaluation.best_qualities, improve_on: @tech_task_evaluation.improve_on, other: @tech_task_evaluation.other, overall: @tech_task_evaluation.overall, presentation: @tech_task_evaluation.presentation, professor: @tech_task_evaluation.professor, research: @tech_task_evaluation.research } }
    end

    assert_redirected_to tech_task_evaluation_url(TechTaskEvaluation.last)
  end

  test "should show tech_task_evaluation" do
    get tech_task_evaluation_url(@tech_task_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_task_evaluation_url(@tech_task_evaluation)
    assert_response :success
  end

  test "should update tech_task_evaluation" do
    patch tech_task_evaluation_url(@tech_task_evaluation), params: { tech_task_evaluation: { best_qualities: @tech_task_evaluation.best_qualities, improve_on: @tech_task_evaluation.improve_on, other: @tech_task_evaluation.other, overall: @tech_task_evaluation.overall, presentation: @tech_task_evaluation.presentation, professor: @tech_task_evaluation.professor, research: @tech_task_evaluation.research } }
    assert_redirected_to tech_task_evaluation_url(@tech_task_evaluation)
  end

  test "should destroy tech_task_evaluation" do
    assert_difference("TechTaskEvaluation.count", -1) do
      delete tech_task_evaluation_url(@tech_task_evaluation)
    end

    assert_redirected_to tech_task_evaluations_url
  end
end
