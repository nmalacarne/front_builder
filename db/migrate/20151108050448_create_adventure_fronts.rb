class CreateAdventureFronts < ActiveRecord::Migration
  def change
    create_table :adventure_fronts do |t|
      t.string :title, :null => false, :default => '[Title]'

      t.timestamps
    end
  end
end
