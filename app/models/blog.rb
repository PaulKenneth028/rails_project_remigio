class Blog < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end

class Blog < ApplicationRecord
  validates :title, presence: true, on: :update
  validates :body, presence: true, on: :update
end


