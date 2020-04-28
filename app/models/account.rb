class Account < ApplicationRecord
    belongs_to :plan
    has_many :users
    has_many :kids
end
