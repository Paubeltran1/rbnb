class AddUserReferenceToPleureuses < ActiveRecord::Migration[5.2]
  def change
    add_reference :pleureuses, :user, foreign_key: true
  end
end
