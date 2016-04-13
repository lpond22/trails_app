class Park < ActiveRecord::Base
has_many :trails, dependent: :destroy
  STATES = ['MA', 'CT', 'VT', 'NH', 'ME']

  validates :name, presence: :true
  validates :name, length: {minimum: 2, maximum: 50}

  validates :state, inclusion: { in: STATES, message: "%{value} is not a New England State" }

end
