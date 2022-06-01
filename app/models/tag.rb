class Tag < ApplicationRecord
  has_many :tag_maps, dependent: :destroy
  has_many :books, through: :tag_maps, dependent: :destroy
  has_many :group_tags
  has_many :groups, through: :group_tags
end
