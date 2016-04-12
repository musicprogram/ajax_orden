class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.string :name
      t.string :cantidad
      t.string :numero

      t.timestamps null: false
    end
  end
end
