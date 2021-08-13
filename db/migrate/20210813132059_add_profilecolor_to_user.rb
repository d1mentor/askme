class AddProfilecolorToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_color, :string, default: "DarkCyan"
  end
end
