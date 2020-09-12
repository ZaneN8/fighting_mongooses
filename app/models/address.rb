class Address < ApplicationRecord
  belongs_to :location, dependent: :destroy
end
