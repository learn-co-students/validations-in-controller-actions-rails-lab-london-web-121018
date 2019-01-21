class Author < ActiveRecord::Base
  has_many :posts
  validates :name ,presence:true, allow_blank: false
  validates :email ,presence:true ,uniqueness:true,allow_blank: false
end
