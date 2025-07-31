class Lista < ApplicationRecord
  belongs_to :usuario
  has_many :tarefas, dependent: :destroy
  validates :titulo, presence: true
end
