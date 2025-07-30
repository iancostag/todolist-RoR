class Lista < ApplicationRecord
  has_many :tarefas, dependent: :destroy
end
