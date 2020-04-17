class Kid < ApplicationRecord
  belongs_to :account
  has_many :resources, class_name: 'KidResource'
end
