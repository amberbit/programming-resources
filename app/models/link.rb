class Link < ActiveRecord::Base
  belongs_to :subject
  VALID_URL_REGEX = /(^|\s)((https?:\/\/)?[\w-]+(\.[\w-]+)+\.?(:\d+)?(\/\S*)?)/
  validates :url, format: { with: VALID_URL_REGEX },
                        uniqueness: { case_sensitive: false }
  validates :title, :subject_name, :description,  presence: true
  before_save {
    subject_name.downcase!
    subject = Subject.find_or_create_by(name: subject_name)
    self.subject_id = subject.id
  }
end
