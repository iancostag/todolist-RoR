class CreateListas < ActiveRecord::Migration[8.0]
  def change
    create_table :listas do |t|
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
