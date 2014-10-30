class Subject < ActiveRecord::Base
  extend FriendlyId
  has_many :linkings
  has_many :links, through: :linkings
  friendly_id :name, use: :slugged
  validates :slug, uniqueness: true
  validates :name, :slug, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
