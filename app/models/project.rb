class Project < ApplicationRecord
  validates :title, :path, presence: true

  def self.search(search)
    if search

      projects = Project.where(["title ILIKE ?", "%#{search[:query]}%"])
    else
      Project.all
    end
  end
end
