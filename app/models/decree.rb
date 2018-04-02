class Decree < ApplicationRecord
    belongs_to :initiator, :class_name =>  "Individual"
end
