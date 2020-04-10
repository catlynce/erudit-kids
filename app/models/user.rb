class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  before_validation :set_username

  private

  def set_username
    self.username = self.email if self.username.blank?
  end
end
