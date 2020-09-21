class AnimalsController < ApplicationController
  before_action :animal_tipos, only: %i[new create]

  
  def new
    @animal = Animal.new
    @pessoa = Pessoa.find(params[:pessoa_id])
  end

  def create
    @animal = Animal.new(animal_params)
    @pessoa = Pessoa.find(params[:pessoa_id])
    @animal.pessoa = @pessoa

    if @animal.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to root_path
  end

  private
  def animal_params
    params.require(:animal).permit(:nome, :tipo, :custo_mensal)
  end

  def pessoa_params
    params.require(:pessoa).permit(:nome, :documento, :data_de_nascimento)
  end

  def animal_tipos
    @tipo = ['cavalo', 'cachorro', 'papagaio', 'lhama', 'iguana', 'ornitorrinco', 'andorinha']
  end

end
