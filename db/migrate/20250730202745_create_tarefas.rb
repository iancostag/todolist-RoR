class CreateTarefas < ActiveRecord::Migration[8.0]
  def change
    create_table :tarefas do |t|
      t.string :titulo
      t.string :descricao
      t.boolean :concluida
      t.date :prazo
      t.references :lista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
