class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :status, presence: true
end
