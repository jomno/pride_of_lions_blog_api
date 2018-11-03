class Blog < ApplicationRecord

  validates :author, presence: true
  validates :feed_url,
             presence: true,
             url: true
end
