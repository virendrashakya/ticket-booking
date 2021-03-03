class Show < ApplicationRecord

    # association
    belongs_to :screen
    has_many :orders
end
