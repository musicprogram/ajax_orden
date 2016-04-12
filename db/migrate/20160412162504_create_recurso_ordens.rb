class CreateRecursoOrdens < ActiveRecord::Migration
  def change
    create_table :recurso_ordens do |t|
      t.string :talla
      t.float :cantidad
      t.references :orden, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
