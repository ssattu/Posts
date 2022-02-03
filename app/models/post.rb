class Post < ApplicationRecord
  belongs_to :user
  
    validates :title, format: { with: /\A[a-zA-Z\s]+\z/ }, presence:true
    validates :description, length: {minimum: 30 }, presence:true 
  

  enum draft: { draft: 0, show: 1 }
  

  mount_uploader :post, PostUploader
end
