class AddTeamidToProjectEvaluations < ActiveRecord::Migration[7.0]
  def change
    add_column :project_evaluations, :teamid, :integer
  end
end
