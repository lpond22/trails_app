class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :parks

  validates :content, presence: true


end
