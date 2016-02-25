class Vote < ActiveRecord::Base
  belongs_to :voter

  validates :candidate_id, presence: true
  validates :voter_id, presence: true
end
