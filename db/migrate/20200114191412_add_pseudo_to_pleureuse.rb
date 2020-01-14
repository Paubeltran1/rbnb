class AddPseudoToPleureuse < ActiveRecord::Migration[5.2]
  def change
    add_column :pleureuse, :pseudo, :string
  end
end
