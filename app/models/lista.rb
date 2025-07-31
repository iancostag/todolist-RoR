class Lista < ApplicationRecord
  has_many :tarefas, dependent: :destroy
  validates :titulo, presence: true
end
