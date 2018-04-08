class Decree < ApplicationRecord
    belongs_to :initiator, :class_name =>  "Individual", optional: true
    serialize :executors, Hash
    serialize :objects
end
