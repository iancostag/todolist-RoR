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
# puts "Limpando banco de dados..."
# Tarefa.destroy_all
# Lista.destroy_all
# Usuario.destroy_all

# puts "Criando usuários, listas e tarefas..."

# 2.times do |i|
#   email = "usuario#{i + 1}@exemplo.com"
#   senha = "senha123"
#   usuario = Usuario.create!(
#     email: "usuario#{i + 1}@exemplo.com",
#     password: "senha123"
#   )
#   puts "Usuário criado: #{email} | Senha: #{senha}"


#   2.times do |j|
#     lista = usuario.listas.create!(
#       titulo: "Lista #{j + 1} do #{usuario.email}"
#     )

#     3.times do |k|
#       lista.tarefas.create!(
#         titulo: "Tarefa #{k + 1} da #{lista.titulo}",
#         descricao: "Descrição da tarefa #{k + 1}",
#         prazo: Date.today + k.days,
#         concluida: [ true, false ].sample
#       )
#     end
#   end
# end

# puts "Seed finalizada com sucesso!"
