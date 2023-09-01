require "application_system_test_case"

class ProjectEvaluationsTest < ApplicationSystemTestCase
  setup do
    @project_evaluation = project_evaluations(:one)
  end

  test "visiting the index" do
    visit project_evaluations_url
    assert_selector "h1", text: "Project evaluations"
  end

  test "should create project evaluation" do
    visit project_evaluations_url
    click_on "New project evaluation"

    fill_in "Best qualities", with: @project_evaluation.best_qualities
    fill_in "Documentation", with: @project_evaluation.documentation
    fill_in "Implementation", with: @project_evaluation.implementation
    fill_in "Improve on", with: @project_evaluation.improve_on
    fill_in "Meeting", with: @project_evaluation.meeting
    fill_in "Other", with: @project_evaluation.other
    fill_in "Overall", with: @project_evaluation.overall
    fill_in "Professor", with: @project_evaluation.professor
    fill_in "Testing", with: @project_evaluation.testing
    click_on "Create Project evaluation"

    assert_text "Project evaluation was successfully created"
    click_on "Back"
  end

  test "should update Project evaluation" do
    visit project_evaluation_url(@project_evaluation)
    click_on "Edit this project evaluation", match: :first

    fill_in "Best qualities", with: @project_evaluation.best_qualities
    fill_in "Documentation", with: @project_evaluation.documentation
    fill_in "Implementation", with: @project_evaluation.implementation
    fill_in "Improve on", with: @project_evaluation.improve_on
    fill_in "Meeting", with: @project_evaluation.meeting
    fill_in "Other", with: @project_evaluation.other
    fill_in "Overall", with: @project_evaluation.overall
    fill_in "Professor", with: @project_evaluation.professor
    fill_in "Testing", with: @project_evaluation.testing
    click_on "Update Project evaluation"

    assert_text "Project evaluation was successfully updated"
    click_on "Back"
  end

  test "should destroy Project evaluation" do
    visit project_evaluation_url(@project_evaluation)
    click_on "Destroy this project evaluation", match: :first

    assert_text "Project evaluation was successfully destroyed"
  end
end
