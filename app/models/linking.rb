class Linking < ActiveRecord::Base
  belongs_to :link
  belongs_to :subject
  has_many :votes
end
