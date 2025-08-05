class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :listas, dependent: :destroy
  has_many :tarefas, through: :listas

  after_create :criar_lista_padrao

  private

  def criar_lista_padrao
    listas.create!(
      titulo: "Minha Primeira Lista",
      descricao: "Lista criada automaticamente ao se cadastrar."
    )
  end
end
