class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    Rails.logger.debug "Auth: #{auth}!!!!!!!"
    user = User.find_by_email(auth.info.email)
    if !user.blank? && (user.provider.blank? || user.uid.blank?)
      user.provider = auth.provider
      user.uid = auth.uid
      user.profile_name = auth.info.nickname || user.email
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      user.image = auth.info.image
      user.save!
      user
    else
      country_name = auth.info.location.split(",").last if !auth.info.blank? && !auth.info.location.blank?
      country = Country.find_by_name(country_name.strip) if !country_name.nil?
      where(auth.slice(provider: auth.provider, uid: auth.uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.profile_name = auth.info.nickname || user.email
        user.first_name = auth.info.first_name
        user.last_name = auth.info.last_name
        user.image = auth.info.image
        user.password = SecureRandom.urlsafe_base64
        user.save!
        user
      end
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
