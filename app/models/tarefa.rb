class Tarefa < ApplicationRecord
  belongs_to :lista
  validates :titulo, presence: true
end
