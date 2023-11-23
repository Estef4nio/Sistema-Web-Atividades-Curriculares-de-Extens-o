class Requi < ApplicationRecord
  belongs_to :user
  has_one_attached :file
  belongs_to :atividade
  belongs_to :modalidade 

  
end
