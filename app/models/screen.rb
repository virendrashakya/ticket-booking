class Screen < ApplicationRecord

    # association
    has_one :show
    has_many :seats
end
