class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :made_from
      t.string :picture
    end
  end
end
