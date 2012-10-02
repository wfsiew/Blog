class Profile < ActiveRecord::Base
  attr_accessible :bio, :birthday, :color, :name, :twitter, :user_id
  
  self.table_name = 'profile'
  
  belongs_to :user
end
