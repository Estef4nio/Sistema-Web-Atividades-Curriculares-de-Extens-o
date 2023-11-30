class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requi

  
  def total_horas_por_atividade(atividade)
    self.requi.joins(:atividade).where(atividades: { nome: atividade }).sum(:horas)
  end

  def total_horas_por_modalidade(modalidade)
    self.requi.joins(atividade: :modalidade).where(modalidades: { nome: modalidade }).sum(:horas)
  end


  def total_horas
    self.requi.sum(:horas)
  end  
  
end
