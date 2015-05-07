class Event < ActiveRecord::Base
  belongs_to :user
  has_many :memberships
  has_many :comments
end
