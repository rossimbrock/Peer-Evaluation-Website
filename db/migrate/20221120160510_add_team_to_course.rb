class AddTeamToCourse < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :course, null: false, foreign_key: true
  end
end
