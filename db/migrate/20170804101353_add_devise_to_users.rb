class AddDeviseToUsers < ActiveRecord::Migration
  
  User.create! do |u|
    u.email = 'james@gmail.com'
    u.password = 'password'
  end

end
