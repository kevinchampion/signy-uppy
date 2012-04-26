class User < ActiveRecord::Base
  has_many :slots
  has_many :sheets

  validates_presence_of :email

  validates_uniqueness_of :email

  before_create :generate_auth_token

  def generate_auth_token
    self.auth = Digest::MD5.hexdigest(self.email)
  end
  def to_s
    email
  end
end
