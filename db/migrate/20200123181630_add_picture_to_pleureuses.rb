class AddPictureToPleureuses < ActiveRecord::Migration[5.2]
  def change
    add_column :pleureuses, :picture, :string
  end
end
