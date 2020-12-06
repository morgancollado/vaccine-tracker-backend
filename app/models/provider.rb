class Provider < ApplicationRecord
    has_many :records
    has_many :patients, through: :records
    has_secure_password
end
