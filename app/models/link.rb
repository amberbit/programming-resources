class Link < ActiveRecord::Base
  belongs_to :subject
  validates :title, :subject_name, :description, :url,  presence: true
  before_save {
    subject_name.downcase!
    subject = Subject.find_or_create_by(name: subject_name)
    self.subject_id = subject.id
  }
end
