class AddTotalHorasToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :total_horas, :integer
  end
end
