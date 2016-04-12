class Trail < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :park

end
