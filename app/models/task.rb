class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :status, presence: true

  # Define default status values
  STATUSES = ['pending', 'in_progress', 'completed']

  # Set default status before creation
  before_create :set_default_status

  private

  def set_default_status
    self.status ||= 'pending'
  end
end
