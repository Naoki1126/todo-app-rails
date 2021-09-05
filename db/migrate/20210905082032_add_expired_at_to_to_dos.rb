class AddExpiredAtToToDos < ActiveRecord::Migration[6.1]
  def change
    add_column :to_dos, :expired_at, :datetime
  end
end
