class Visit < ActiveRecord::Base

  belongs_to :subject
  has_many :comments

  validates :dov, presence: true
  validates :subject_id, presence: true

end