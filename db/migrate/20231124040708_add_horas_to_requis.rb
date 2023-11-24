class AddHorasToRequis < ActiveRecord::Migration[7.0]
  def change
    add_column :requis, :horas, :integer
  end
end
