class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :title, null: false, default: "" 
      t.text :description

      t.timestamps
    end
  end
end
