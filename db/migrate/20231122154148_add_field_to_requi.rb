class AddFieldToRequi < ActiveRecord::Migration[7.0]
  def change
    add_column :requis, :verify, :boolean
  end
end
