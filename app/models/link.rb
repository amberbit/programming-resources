class Link < ActiveRecord::Base
  has_many :subjects
  has_many :links, through: :linkings
  VALID_URL_REGEX = /(^|\s)((https?:\/\/)?[\w-]+(\.[\w-]+)+\.?(:\d+)?(\/\S*)?)/
  validates :url, format: { with: VALID_URL_REGEX }
  validates :title, :description,  presence: true
end
