class CreateStudentTeamsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :teams
  end
end
