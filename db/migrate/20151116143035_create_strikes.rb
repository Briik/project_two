class CreateStrikes < ActiveRecord::Migration
  def change
    create_table :strikes do |t|
    t.references :country, index: true, foreign_key: true
    t.references :target, index: true, foreign_key: true
    t.boolean :airstrike
    t.string :date
    t.integer :time
    t.string :area
      t.timestamps null: false
    end
  end
end
