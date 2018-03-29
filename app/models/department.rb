class Department < ApplicationRecord
    has_many :individuals
    belongs_to :parental_dept, :class_name => 'Department', polymorphic: true, validate: false, optional: true
    has_many :child_depts, :class_name => 'Department', :foreign_key => 'parental_dept_id', validate: false
end
