# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Limpando banco de dados..."
Tarefa.delete_all
Lista.delete_all
Usuario.delete_all

puts "criando usuários"
usuario1 = Usuario.create!(
  email: "alice@email.com",
  password: "123456",
  password_confirmation: "123456",
  confirmed_at: Time.current
)

usuario2 = Usuario.create!(
  email: "ian@email.com",
  password: "123456",
  password_confirmation: "123456",
  confirmed_at: Time.current
)

usuario3 = Usuario.create!(
  email: "isabelaifm@hotmail.com",
  password: "123456",
  password_confirmation: "123456",
  confirmed_at: Time.current
)
puts "criando listas extras,além das padrões"
lista_extra1 = usuario1.listas.create!(
  titulo: "Projetos da Faculdade",
  descricao: "Organize suas tarefas acadêmicas"
)

lista_extra2 = usuario2.listas.create!(
  titulo: "Trabalho",
  descricao: "Tarefas profissionais"
)

puts "Criando tarefas para usuários"
usuario1.listas.each do |lista|
  lista.tarefas.create!(
    titulo: "Ler capítulo de Rails",
    descricao: "Estudar Active Record e associações",
    prazo: Date.today + 1,
    concluida: false
  )
end

usuario2.listas.each do |lista|
  lista.tarefas.create!(
    titulo: "Enviar relatório",
    descricao: "Prazo final às 18h",
    prazo: Date.today,
    concluida: false
  )
end

puts "Banco de dados criados com sucesso!"
