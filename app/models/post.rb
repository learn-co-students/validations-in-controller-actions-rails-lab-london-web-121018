class Post < ActiveRecord::Base
  belongs_to :author
  validates :title,presence:true ,blank:false
  validates :category ,inclusion: { in: ["Fiction","Non-Fiction"] }
  validates :content,length:{minimum:100}
  # def fiction?
  #   fiction
  # end
  #
  # def nonfiction?
  #   !fiction
  # end
end
