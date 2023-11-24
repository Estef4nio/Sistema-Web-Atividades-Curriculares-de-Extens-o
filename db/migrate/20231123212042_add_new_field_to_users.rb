class AddNewFieldToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :carga_horaria, :integer
  end
end
