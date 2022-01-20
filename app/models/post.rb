class Post < ApplicationRecord
  belongs_to :user
  validates :title, format: { with: /\A[a-zA-Z\s]+\z/ }, presence:true
  validates :description, length: {minimum: 30 }, presence:true 

   mount_uploader :post, PostUploader
end
