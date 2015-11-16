class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
        t.references :country, index: true, foreign_key: true
        t.references :target, index: true, foreign_key: true
        t.boolean :allies
        t.boolean :coordination
        t.boolean :enemies
      t.timestamps null: false
    end
  end
end
