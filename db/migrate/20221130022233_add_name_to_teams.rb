class AddNameToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :name, :string, null: false
  end
end
