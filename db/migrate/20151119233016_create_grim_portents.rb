class CreateGrimPortents < ActiveRecord::Migration
  def change
    create_table :grim_portents do |t|
      t.references :danger
      t.text :description
      t.boolean :complete

      t.timestamps
    end
    add_index :grim_portents, :danger_id
  end
end
