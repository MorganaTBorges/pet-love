class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end
  
  def new
    @animal = Animal.new
    @pessoa = Pessoa.find(params[:pessoa_id])
  end

  def create
    @pessoa = Pessoa.find(params[:pessoa_id])
    @animal = Animal.new(animal_params)
    @pessoa.animal = @pessoa
  end


  private
  def animal_params
    params.require(:animal).permit(:nome, :tipo, :custo_mensal)
  end

  def pessoa_params
    params.require(:pessoa).permit(:nome, :documento, :data_de_nascimento)
  end

end
