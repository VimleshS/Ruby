class RemoveQuantityToLineItems < ActiveRecord::Migration
  def change
    remove_column :line_items, :qunatity, :integer
  end
end
