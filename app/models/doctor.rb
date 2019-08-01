class Doctor < ApplicationRecord
  belongs_to :city
  has_many :appointments
  has_many :joins
has_many :patients, through: :appointments
has_many :specialties, through: :joins

end
