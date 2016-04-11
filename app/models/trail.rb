class Trail < ActiveRecord::Base
  #has_many :reviews
  belongs_to :park

  validates :content, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
