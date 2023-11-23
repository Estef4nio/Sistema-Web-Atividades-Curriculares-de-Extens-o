class Atividade < ApplicationRecord
  belongs_to :modalidade
  has_many :requi
end
