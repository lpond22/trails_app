class Park < ActiveRecord::Base
  has_many :reviews
  STATES = ['MA', 'CT', 'VT', 'NH', 'ME']
end
