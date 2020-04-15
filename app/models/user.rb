class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  before_validation :set_username

  belongs_to :account
  has_many :kids, class_name: 'Kid', foreign_key: 'account_id'
  # has_many :kids, through: :account, dependent: :destroy
  # has_many :resources, dependent: :destroy

  private

  def set_username
    self.username = self.email if self.username.blank?
  end
end
