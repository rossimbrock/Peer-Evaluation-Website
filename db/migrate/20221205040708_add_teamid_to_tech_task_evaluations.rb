class AddTeamidToTechTaskEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :tech_task_evaluations, :teamid, :integer
  end
end
