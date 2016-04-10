class Park < ActiveRecord::Base
  has_many :users, through: :reviews
  STATES = ['MA', 'CT', 'VT', 'NH', 'ME']
end
