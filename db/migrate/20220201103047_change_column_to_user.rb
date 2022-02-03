class ChangeColumnToUser < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :status, :integer, default:0
    change_column :users, :is_admin, :boolean, null:false, default: 'false'
  end
end
