class Post < ActiveRecord::Base
  
  attr_accessible :title, :description, :user_id, :attachment, :attachment_file_name
  
  belongs_to :user
  
  has_attached_file :attachment
  
end
