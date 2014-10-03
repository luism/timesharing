class AddEMailToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :email, :string
  end
end
