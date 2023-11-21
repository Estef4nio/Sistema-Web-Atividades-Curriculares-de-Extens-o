class Atividade < ApplicationRecord
  belongs_to :modalidade
  belongs_to :user
end
