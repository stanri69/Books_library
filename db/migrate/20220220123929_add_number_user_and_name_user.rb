class AddNumberUserAndNameUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :number, :integer
  end
end
