class AnimalsController < ApplicationController

  def index
      @animals = Animal.all
    end
  
    def new
      @animal = Animal.new
    end
  
    def create
      @pessoa = Pessoa.find(params[:pessoa_id])
      @animal = Animal.new(animal_params)
      @pessoa.animal = @pessoa
    end
  
  
    private
    def animal_params
      params.require(:animal).permit(:name, :tipo, :custo_mensal)
    end

end
