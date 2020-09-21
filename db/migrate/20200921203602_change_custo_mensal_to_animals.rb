class ChangeCustoMensalToAnimals < ActiveRecord::Migration[6.0]
  def change
    change_column :animals, :custo_mensal, :float
  end
end
