class Post < ApplicationRecord
  belongs_to :user



  validates :user_id, presence:true
  validates :title, presence:true
  validates :description, presence:true, length:{minimum: 30 }

end
