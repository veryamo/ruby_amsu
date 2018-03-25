class Role < ApplicationRecord
    has_many :individuals
    has_many :users, :through => :individuals
end
