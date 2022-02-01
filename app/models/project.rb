class Project < ActiveRecord::Base
  has_many :tasks
  has_many :assets

  validates :name, presence: true

  acts_as_paranoid

  # searchable do
  #   text :name, :description
  # end
end
