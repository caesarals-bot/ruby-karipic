class Pic < ApplicationRecord
  has_many_attached :images
  belongs_to :user
end
