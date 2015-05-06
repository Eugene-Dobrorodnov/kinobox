class AddIsAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean

    User.create! do |u|
        u.email    = 'admin@example.com'
        u.password = 'admin'
        u.is_admin = true
    end

  end
end
