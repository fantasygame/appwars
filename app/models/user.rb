class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]

  has_many :competitions
  has_many :wars, through: :competitions

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= User.count.zero? ? :admin : :user
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name = auth['info']['name'] || ''
        user.email = auth['info']['email']
        user.image = auth['info']['image']
        user.nickname = auth['info']['nickname']
      end
    end
  end
end
