class Note < ApplicationRecord

  scope :newest_first, lambda { order ("created_at DESC")}
  scope :search, lambda {|query| where (["name like ?" , "%#{query}%"])}
end
