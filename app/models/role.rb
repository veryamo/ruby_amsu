class Role < ApplicationRecord
    has_many :individuals
    has_and_belongs_to_many :users
end
