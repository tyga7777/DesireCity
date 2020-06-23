class Desire < ApplicationRecord
  belongs_to :user
  
  enum status: {
    in_progress: 1,
    done: 2,
    pending: 3,
    retired: 4
  }
  
end
