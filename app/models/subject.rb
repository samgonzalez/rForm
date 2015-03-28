class Subject < ActiveRecord::Base

  has_many :visits

  validates :subjectNumber, presence: true,
            length: { minimum: 8}
  validates :age, presence: true

end
