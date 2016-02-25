class Voter < ActiveRecord::Base
  has_one :vote

  # validates :candidate_id, presence: true
  validates :name, presence: true
  validates :party, presence: true
  validates :token, presence: true, uniqueness: true

  before_validation :give_token

  private
    def give_token
      self.token = SecureRandom.hex
    end
end
