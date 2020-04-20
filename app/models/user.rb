class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  before_validation :set_username

  before_validation :verify_invited

  belongs_to :account
  has_many :kids, class_name: 'Kid', foreign_key: 'account_id'

  private

  def set_username
    self.username = self.email if self.username.blank?
  end

  def verify_invited
    account_id = Share.where(email: email).pluck(:account_id).first
    unless account_id.nil?
      self.account_id = account_id
    else
      part1 = Time.now.strftime('%Y%m%d')
      part2 = ('a'..'z').to_a.shuffle[0,4].join.upcase
      part3 = User.maximum(:id).next.to_s.rjust(6,'0')
      account = Account.create uid: "#{part1}-#{part2}-#{part1}", plan: Plan.first
      self.account_id = account
    end
  end
end
