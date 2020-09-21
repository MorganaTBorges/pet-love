class PessoasController < ApplicationController


  def home
  end

  def index
    @pessoas = Pessoa.all
  end

  def show
    @pessoa = Pessoa.find(params[:id])
    @animals = Animal.where(pessoa_id: @pessoa)
    @idade = ((Time.zone.now - @pessoa.data_de_nascimento.to_time) / 1.year.seconds).floor
  end

  private
  def pessoa_params
    params.require(:pessoa).permit(:nome, :documento, :data_de_nascimento)
  end

end
