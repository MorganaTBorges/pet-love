# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pessoa.create(nome: 'Johnny Cash', documento: '555555555', data_de_nascimento: '26-02-1932')
Pessoa.create(nome: 'Sid Vicious', documento: '555555555', data_de_nascimento: '10 de maio de 1957')
Pessoa.create(nome: 'Axl Rose', documento: '555555555', data_de_nascimento: '6 de fevereiro de 1962')
Pessoa.create(nome: 'Joey Ramone', documento: '555555555', data_de_nascimento: '19 de maio de 1951')
Pessoa.create(nome: 'Bruce Dickinson', documento: '555555555', data_de_nascimento: '7 de agosto de 1958')
Pessoa.create(nome: 'Kurt Cobain', documento: '555555555', data_de_nascimento: '20 de fevereiro de 1967')
Pessoa.create(nome: 'Elvis Presley', documento: '555555555', data_de_nascimento: '17 de agosto de 2008')

Animal.create(nome: 'Pé de Pano', custo_mensal: '199,99', tipo: 'Cavalo', pessoa_id: '1')
Animal.create(nome: 'Rex', custo_mensal: '99,99', tipo: 'Cachorro', pessoa_id: '2')
Animal.create(nome: 'Ajudante do Papai Noel', custo_mensal: '99,99', tipo: 'Cachorro', pessoa_id: '3')
Animal.create(nome: 'Rex', custo_mensal: '103,99', tipo: 'Papagaio', pessoa_id: '4')
Animal.create(nome: 'Flora', custo_mensal: '103,99', tipo: 'Lhama', pessoa_id: '5')
Animal.create(nome: 'Dino', custo_mensal: '177,99', tipo: 'Iguana', pessoa_id: '6')
Animal.create(nome: 'Lassie', custo_mensal: '407,99', tipo: 'Ornitorrinco', pessoa_id: '7')



