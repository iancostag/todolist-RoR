class Usuario < ApplicationRecord
  has_secure_password
  has_many :listas, dependent: :destroy
end
