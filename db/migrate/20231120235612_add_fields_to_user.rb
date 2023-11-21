class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nome, :string
    add_column :users, :matricula, :string
  end
end
