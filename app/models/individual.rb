class Individual < ApplicationRecord
    belongs_to :user
    belongs_to :department
    has_many :decrees, foreign_key: "initiator_id"

end

