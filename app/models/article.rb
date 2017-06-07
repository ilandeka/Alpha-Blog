class Article < ActiveRecord::Base
  # ensures that it is present in the DB
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
