class Project < ApplicationRecord
  has_many :tasks, dependent: :delete_all

  validates :name, presence: true
end
