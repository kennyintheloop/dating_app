class User < ActiveRecord::Base
  #Once user is signed in, their credential will be stored in user model.
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      UserMailer.welcome_email(user).deliver
    end

    #validates :email, uniqueness: true, presence:true
  end
  has_many :pet_details
  has_many :dog_parks, :through => :park_vote
  has_one :user_details
  validates :email, :uniqueness => true
end
