class RemoveUsersIdFromAtividades < ActiveRecord::Migration[7.0]
  def change
    remove_column :atividades, :users_id, :integer
  end
end
