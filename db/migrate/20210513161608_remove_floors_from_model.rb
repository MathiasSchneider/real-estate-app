class RemoveFloorsFromModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :floors, :integer
  end
end
