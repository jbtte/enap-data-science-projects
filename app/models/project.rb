class Project < ApplicationRecord
  validates :title, :path, presence: true
end
