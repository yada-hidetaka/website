class Article < ApplicationRecord
  attachment :image
  belongs_to :user
end
