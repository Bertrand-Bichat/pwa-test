class AddOmniauthToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :uid, :string
    add_column :users, :avatar_url, :string
  end
end
