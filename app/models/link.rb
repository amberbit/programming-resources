class Link < ActiveRecord::Base
  before_validation :add_protocol
  has_many :subjects
  has_many :links, through: :linkings
  VALID_URL_REGEX = /(^|\s)((https?:\/\/)?[\w-]+(\.[\w-]+)+\.?(:\d+)?(\/\S*)?)/
  validates :url, format: { with: VALID_URL_REGEX }
  validates :title, :description,  presence: true

  protected
    def add_protocol
      unless self.url[/\Ahttp:\/\//] || self.url[/\Ahttps:\/\//]
        self.url = "http://#{self.url}"
      end
    end
end
