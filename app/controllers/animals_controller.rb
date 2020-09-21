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

    if @pessoa.nome[0] == 'A' && @animal.tipo == 'Gato'
      redirect_to new_pessoa_animal_path(@pessoa), notice: 'Você não pode ter gatos, selecione outro animal'
    elsif 
      @animal.save!
      redirect_to root_path
    else
      render :new
    end

    # if @animal.save!
    #   redirect_to root_path
    # else
    #   render :new
    # end
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
    @tipo_maiores = ['Cavalo', 'Cachorro', 'Papagaio', 'Lhama', 'Iguana', 'Ornitorrinco', 'Andorinha', 'Gato']
    @tipo_menores = ['Cavalo', 'Cachorro', 'Papagaio', 'Lhama', 'Iguana', 'Ornitorrinco', 'Gato']
  end

end
