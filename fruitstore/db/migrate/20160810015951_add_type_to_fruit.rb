class AddTypeToFruit < ActiveRecord::Migration
  def change
    add_column :fruits, :type, :string
  end
end
