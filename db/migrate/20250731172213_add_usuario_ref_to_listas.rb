class AddUsuarioRefToListas < ActiveRecord::Migration[8.0]
  def change
    add_reference :listas, :usuario, null: false, foreign_key: true
  end
end
