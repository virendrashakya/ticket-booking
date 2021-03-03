class Screen < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged

    # association
    has_many :shows
    has_many :seats
end
