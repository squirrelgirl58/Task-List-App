class Task < ApplicationRecord
  belongs_to :task_list
  scope :completed, -> { where(is_completed: true), order(created_at: :desc) }
  scope :pending, -> { where(is_completed: false), order(created_at: :asc) }

  validates :title, :priority, :due_date, :task_list, presence: true
  validates :priority, inclusion: { in: 1..10, message:"\"%{value}\" must be between 1 and 10"}
end
