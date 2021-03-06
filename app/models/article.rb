class Article < ActiveRecord::Base
  attr_accessible :body, :category_id, :title, :photo, :prebody
  has_attached_file :photo, :styles => { :small => "100x120>", :medium => "250x300>"}
  belongs_to :category
  self.per_page = 5  
end
