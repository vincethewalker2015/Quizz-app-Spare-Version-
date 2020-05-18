class Question < ApplicationRecord
  belongs_to :exam 
  has_many :answers
  accepts_nested_attributes_for :answers, :reject_if => :all_blank, :allow_destroy => true

  has_one  :free_response
end
