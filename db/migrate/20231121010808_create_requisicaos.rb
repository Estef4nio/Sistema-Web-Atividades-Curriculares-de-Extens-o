class CreateRequisicaos < ActiveRecord::Migration[7.0]
  def change
    create_table :requisicaos do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
