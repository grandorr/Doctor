class Specialty < ApplicationRecord
has_many :doctors, through: :joins
end
