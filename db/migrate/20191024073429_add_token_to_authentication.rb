class AddTokenToAuthentication < ActiveRecord::Migration[5.1]
  def change
    add_column :authentications, :access_token, :string
    add_column :authentications, :refresh_token, :string
  end
end
