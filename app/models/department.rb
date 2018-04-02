class Department < ApplicationRecord
    has_many :individuals
    belongs_to :parental_dept, class_name: 'Department', polymorphic: true, validate: false, optional: true
    has_many :child_depts, class_name: 'Department', foreign_key: 'parental_dept_id', validate: false
    def parental_dept_name
        parental_dept.try(:name)
    end
    def has_parental_dept?
        parental_dept.present?
    end
    def has_child_depts?
        child_depts.exists?
    end
end
