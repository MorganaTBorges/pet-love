class PessoasController < ApplicationController


  def home
  end

  def index
    @pessoas = Pessoa.all
  end

  def show
    @pessoa = Pessoa.find(params[:id])
    @animals = Animal.where(pessoa_id: @pessoa)
  end

  private
  def pessoa_params
    params.require(:pessoa).permit(:nome, :documento, :data_de_nascimento)
  end

end
