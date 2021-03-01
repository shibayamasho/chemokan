class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name

    UID_REGEX = /\A[a-z0-9]+\z/
    validates :uid, format: { with: UID_REGEX },
                    uniqueness: true,
                    length: { minimum: 8 }
  end

  PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  validates :password, format: { with: PASSWORD_REGEX }
end
