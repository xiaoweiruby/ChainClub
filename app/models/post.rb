class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
    
  belongs_to :user
  belongs_to :group
  has_many :comments, dependent: :destroy
  
  scope :recent, -> { order("created_at DESC")}
  
end
