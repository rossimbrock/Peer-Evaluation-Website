require "test_helper"

class ProjectEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_evaluation = project_evaluations(:one)
  end

  test "should get index" do
    get project_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_project_evaluation_url
    assert_response :success
  end

  test "should create project_evaluation" do
    assert_difference("ProjectEvaluation.count") do
      post project_evaluations_url, params: { project_evaluation: { best_qualities: @project_evaluation.best_qualities, documentation: @project_evaluation.documentation, implementation: @project_evaluation.implementation, improve_on: @project_evaluation.improve_on, meeting: @project_evaluation.meeting, other: @project_evaluation.other, overall: @project_evaluation.overall, professor: @project_evaluation.professor, testing: @project_evaluation.testing } }
    end

    assert_redirected_to project_evaluation_url(ProjectEvaluation.last)
  end

  test "should show project_evaluation" do
    get project_evaluation_url(@project_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_evaluation_url(@project_evaluation)
    assert_response :success
  end

  test "should update project_evaluation" do
    patch project_evaluation_url(@project_evaluation), params: { project_evaluation: { best_qualities: @project_evaluation.best_qualities, documentation: @project_evaluation.documentation, implementation: @project_evaluation.implementation, improve_on: @project_evaluation.improve_on, meeting: @project_evaluation.meeting, other: @project_evaluation.other, overall: @project_evaluation.overall, professor: @project_evaluation.professor, testing: @project_evaluation.testing } }
    assert_redirected_to project_evaluation_url(@project_evaluation)
  end

  test "should destroy project_evaluation" do
    assert_difference("ProjectEvaluation.count", -1) do
      delete project_evaluation_url(@project_evaluation)
    end

    assert_redirected_to project_evaluations_url
  end
end
