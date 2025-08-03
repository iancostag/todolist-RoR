class Tarefa < ApplicationRecord
  belongs_to :lista
  validates :titulo, presence: true, length: { maximum: 40 }
end
