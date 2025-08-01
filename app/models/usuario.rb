class Usuario < ApplicationRecord
  has_secure_password
  has_many :listas, dependent: :destroy
  has_many :tarefas, through: :listas
end
