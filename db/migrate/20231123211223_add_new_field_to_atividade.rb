class AddNewFieldToAtividade < ActiveRecord::Migration[7.0]
  def change
    add_column :atividades, :horas, :integer
  end
end
