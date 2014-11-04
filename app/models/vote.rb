class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :linking
  validates :user_id, uniqueness: { scope: :linking_id,
                              message: "You can vote only once." }
end
