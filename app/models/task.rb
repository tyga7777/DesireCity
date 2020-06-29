class Task < ApplicationRecord
  belongs_to :user
  belongs_to :desire

  enum status: {
    in_progress: 1,
    done: 2,
  }

  scope :today, -> { where(target_date: Date.today) }
end
