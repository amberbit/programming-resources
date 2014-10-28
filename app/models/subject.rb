class Subject < ActiveRecord::Base
  extend FriendlyId
  has_many :linkings
  has_many :links, through: :linkings
  friendly_id :name, use: :slugged
  before_save { name.downcase! }
  validates :name, :slug, uniqueness: true
end
