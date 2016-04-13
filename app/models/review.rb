class Review < ActiveRecord::Base

    belongs_to :trail
    belongs_to :user
 RATINGS = [1, 2, 3, 4 ,5]
  validates :content, presence: true

validates :rating, inclusion: { in: RATINGS , message: "Rating must be 1 - 5" }
end
