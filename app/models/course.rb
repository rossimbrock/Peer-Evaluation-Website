class Course < ApplicationRecord
    validates_presence_of :subject, :number, :semester, :admin_id
    validates :admin_id, :numericality => {:only_integer => true}
end
