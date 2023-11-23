# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Criar modalidades
modalidade1 = Modalidade.create(nome: 'Ace-1', cargaHoraria: '200'))
modalidade2 = Modalidade.create(nome: 'Ace-2', cargaHoraria: '200'))
modalidade3 = Modalidade.create(nome: 'Ace-3', cargaHoraria: '200'))

#Criar atividades 
Atividade.create(nome: 'Atividade 1-1', cargaHorariaMaxima: '200', modalidade: modalidade1)
Atividade.create(nome: 'Atividade 2-1', cargaHorariaMaxima: '100', modalidade: modalidade1)

Atividade.create(nome: 'Atividade 1-2', cargaHorariaMaxima: '100', modalidade: modalidade2)
Atividade.create(nome: 'Atividade 2-2', cargaHorariaMaxima: '100', modalidade: modalidade2)
Atividade.create(nome: 'Atividade 3-2', cargaHorariaMaxima: '100', modalidade: modalidade2)
Atividade.create(nome: 'Atividade 4-2', cargaHorariaMaxima: '50', modalidade: modalidade2)

Atividade.create(nome: 'Atividade 1-3', cargaHorariaMaxima: '200', modalidade: modalidade3)
Atividade.create(nome: 'Atividade 2-3', cargaHorariaMaxima: '100', modalidade: modalidade3)
Atividade.create(nome: 'Atividade 3-3', cargaHorariaMaxima: '200', modalidade: modalidade3)
Atividade.create(nome: 'Atividade 4-3', cargaHorariaMaxima: '100', modalidade: modalidade3)
Atividade.create(nome: 'Atividade 5-3', cargaHorariaMaxima: '200', modalidade: modalidade3)
