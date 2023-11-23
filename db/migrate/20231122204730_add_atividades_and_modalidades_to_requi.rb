class AddAtividadesAndModalidadesToRequi < ActiveRecord::Migration[7.0]
  def change
    add_reference :requis, :atividade, null: false, foreign_key: true
    add_reference :requis, :modalidade, null: false, foreign_key: true
  end
end
