require "application_system_test_case"

class TechTaskEvaluationsTest < ApplicationSystemTestCase
  setup do
    @tech_task_evaluation = tech_task_evaluations(:one)
  end

  test "visiting the index" do
    visit tech_task_evaluations_url
    assert_selector "h1", text: "Tech task evaluations"
  end

  test "should create tech task evaluation" do
    visit tech_task_evaluations_url
    click_on "New tech task evaluation"

    fill_in "Best qualities", with: @tech_task_evaluation.best_qualities
    fill_in "Improve on", with: @tech_task_evaluation.improve_on
    fill_in "Other", with: @tech_task_evaluation.other
    fill_in "Overall", with: @tech_task_evaluation.overall
    fill_in "Presentation", with: @tech_task_evaluation.presentation
    fill_in "Professor", with: @tech_task_evaluation.professor
    fill_in "Research", with: @tech_task_evaluation.research
    click_on "Create Tech task evaluation"

    assert_text "Tech task evaluation was successfully created"
    click_on "Back"
  end

  test "should update Tech task evaluation" do
    visit tech_task_evaluation_url(@tech_task_evaluation)
    click_on "Edit this tech task evaluation", match: :first

    fill_in "Best qualities", with: @tech_task_evaluation.best_qualities
    fill_in "Improve on", with: @tech_task_evaluation.improve_on
    fill_in "Other", with: @tech_task_evaluation.other
    fill_in "Overall", with: @tech_task_evaluation.overall
    fill_in "Presentation", with: @tech_task_evaluation.presentation
    fill_in "Professor", with: @tech_task_evaluation.professor
    fill_in "Research", with: @tech_task_evaluation.research
    click_on "Update Tech task evaluation"

    assert_text "Tech task evaluation was successfully updated"
    click_on "Back"
  end

  test "should destroy Tech task evaluation" do
    visit tech_task_evaluation_url(@tech_task_evaluation)
    click_on "Destroy this tech task evaluation", match: :first

    assert_text "Tech task evaluation was successfully destroyed"
  end
end
