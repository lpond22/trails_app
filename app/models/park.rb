class Park < ActiveRecord::Base
has_many :trails, dependent: :destroy
  STATES = ['MA', 'CT', 'VT', 'NH', 'ME']
end
