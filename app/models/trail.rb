class Trail < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :park

  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum: 30}

end
