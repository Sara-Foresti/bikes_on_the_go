class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :type
      t.string :size
      t.float :price
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
