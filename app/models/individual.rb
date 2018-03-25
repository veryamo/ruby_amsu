class Individual < ApplicationRecord
    belongs_to :user
    belongs_to :role
    belongs_to :department
end
