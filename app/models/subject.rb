class Subject < ActiveRecord::Base
  extend FriendlyId
  has_many :links
  friendly_id :name, use: :slugged
  validates :name, :slug, uniqueness: true
end
