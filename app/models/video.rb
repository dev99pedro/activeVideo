class Video < ApplicationRecord
  validates_presence_of :title, :description
  has_one_attached :video
end
