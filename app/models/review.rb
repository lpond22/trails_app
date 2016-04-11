class Review < ActiveRecord::Base

  belongs_to :trail
    belongs_to :user

  validates :content, presence: true


end
