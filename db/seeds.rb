# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Criar modalidades
modalidade1 = Modalidade.create(nome: 'ACE-1', cargaHoraria: '200')
modalidade2 = Modalidade.create(nome: 'ACE-2', cargaHoraria: '200')
modalidade3 = Modalidade.create(nome: 'ACE-3', cargaHoraria: '200')

#Criar atividades 
Atividade.create(nome: 'Projetos e Programas', cargaHorariaMaxima: '200', modalidade: modalidade1, horas: 50)
Atividade.create(nome: 'Projetos Isolados', cargaHorariaMaxima: '100', modalidade: modalidade1)

Atividade.create(nome: 'Organizacao de Cursos', cargaHorariaMaxima: '100', modalidade: modalidade2)
Atividade.create(nome: 'Organizacao de Eventos', cargaHorariaMaxima: '100', modalidade: modalidade2)
Atividade.create(nome: 'Eventos Cientificos', cargaHorariaMaxima: '100', modalidade: modalidade2)
Atividade.create(nome: 'Comissao Organizadora', cargaHorariaMaxima: '50', modalidade: modalidade2)

Atividade.create(nome: 'Capacitacao Supervisionada', cargaHorariaMaxima: '100', modalidade: modalidade3)
Atividade.create(nome: 'Aulas Supervisionadas', cargaHorariaMaxima: '50', modalidade: modalidade3)
Atividade.create(nome: 'Assessoria', cargaHorariaMaxima: '100', modalidade: modalidade3)
Atividade.create(nome: 'Atendimento ao Publico', cargaHorariaMaxima: '50', modalidade: modalidade3)
Atividade.create(nome: 'Participacao em Organizacao', cargaHorariaMaxima: '50', modalidade: modalidade3)

# Criar usuarios
user1 = User.create(nome: 'Estudante1', email: 'estudante1@pq.uenf.br', password: '123456', matricula: '20211100086', carga_horaria: '0')
user2 = User.create(nome: 'Estudante2', email: 'estudante2@pq.uenf.br', password: '123456', matricula: '20201100087', carga_horaria: '0')
user3 = User.create(nome: 'Estudante3', email: 'estudante3@pq.uenf.br', password: '123456', matricula: '20211100060', carga_horaria: '0')
user4 = User.create(nome: 'Estudante4', email: 'estudante4@pq.uenf.br', password: '123456', matricula: '20211100046', carga_horaria: '0')

# Criar admin
admin = Admin.create(email: 'admin@pq.uenf.br', password: '123456')