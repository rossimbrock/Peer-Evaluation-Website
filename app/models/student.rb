#Author: Charles Kluznik
#Date: 11/29/2022
class Student < ApplicationRecord
    has_and_belongs_to_many :teams,
        join_table: 'students_teams' #link to the students_teams join table for n:m relationship
end
