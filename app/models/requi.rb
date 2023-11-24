class Requi < ApplicationRecord
  belongs_to :user
  has_one_attached :file
  belongs_to :atividade
  belongs_to :modalidade

  #######
  validates :horas, presence: true, numericality: { only_integer: true, greater_than: 0 }

  
end
