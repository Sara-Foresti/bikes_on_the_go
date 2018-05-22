class AddColumnsToBike < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :name, :string
    add_column :bikes, :description, :string
  end
end
