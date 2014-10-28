class Linking < ActiveRecord::Base
  belongs_to :link
  belongs_to :subject
end
