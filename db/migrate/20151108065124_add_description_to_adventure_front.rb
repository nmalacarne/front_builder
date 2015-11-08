class AddDescriptionToAdventureFront < ActiveRecord::Migration
  def change
    add_column :adventure_fronts, :description, :string
  end
end
