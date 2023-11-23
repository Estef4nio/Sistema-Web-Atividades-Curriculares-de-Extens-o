class CreateRequis < ActiveRecord::Migration[7.0]
  def change
    create_table :requis do |t|
      t.string :titulo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
