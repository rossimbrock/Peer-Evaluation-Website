class AddCourseToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :admin, null: false, foreign_key: true
  end
end
