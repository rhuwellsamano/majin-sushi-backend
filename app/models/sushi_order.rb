class SushiOrder < ApplicationRecord
  belongs_to :user
  belongs_to :sushi
end
