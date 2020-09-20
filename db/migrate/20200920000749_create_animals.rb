class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :nome
      t.integer :custo_mensal
      t.string :tipo
      t.references :pessoa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
