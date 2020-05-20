class StudentAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :student
end
