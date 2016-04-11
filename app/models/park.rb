class Park < ActiveRecord::Base
has_many :trails
  STATES = ['MA', 'CT', 'VT', 'NH', 'ME']
end
