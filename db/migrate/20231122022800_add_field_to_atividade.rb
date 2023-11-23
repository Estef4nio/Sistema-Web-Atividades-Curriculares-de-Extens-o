class AddFieldToAtividade < ActiveRecord::Migration[7.0]
  def change
    add_reference :atividades, :users, null: false, foreign_key: true
  end
end
