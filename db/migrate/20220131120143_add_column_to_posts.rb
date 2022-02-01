class AddColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :draft, :integer
  end
end
