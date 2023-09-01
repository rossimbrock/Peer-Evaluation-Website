class CreateProjectEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :project_evaluations do |t|
      t.string :overall
      t.string :implementation
      t.string :documentation
      t.string :testing
      t.string :meeting
      t.string :best_qualities
      t.string :improve_on
      t.string :professor
      t.string :other

      t.timestamps
    end
  end
end
