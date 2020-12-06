class Patient < ApplicationRecord
    has_many :records 
    has_many :providers, through: :records
end
