class CreateDangers < ActiveRecord::Migration
  def change
    create_table :dangers do |t|
      t.references :adventure
      t.string :title
      t.string :impulse
      t.string :impending_doom

      t.timestamps
    end
    add_index :dangers, :adventure_id
  end
end
