class Answer < ApplicationRecord
  belongs_to :question
  has_many :student_answers
end
