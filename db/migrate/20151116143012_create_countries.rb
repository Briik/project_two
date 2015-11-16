class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
        t.string :name
        t.string :reason
        t.string :assets
        t.string :flag_link
      t.timestamps null: false
    end
  end
end
