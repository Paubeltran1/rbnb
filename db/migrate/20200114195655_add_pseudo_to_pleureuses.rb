class AddPseudoToPleureuses < ActiveRecord::Migration[5.2]
  def change
    add_column :pleureuses, :pseudo, :string
  end
end
