class CreatePleureuses < ActiveRecord::Migration[5.2]
  def change
    create_table :pleureuses do |t|
      t.text :description
      t.string :gender
      t.string :city
      t.string :address
      t.integer :price
      t.string :language
      t.string :drama_option

      t.timestamps
    end
  end
end
