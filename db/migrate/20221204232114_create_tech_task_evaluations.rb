class CreateTechTaskEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :tech_task_evaluations do |t|
      t.string :overall
      t.string :research
      t.string :presentation
      t.string :best_qualities
      t.string :improve_on
      t.string :professor
      t.string :other

      t.timestamps
    end
  end
end
