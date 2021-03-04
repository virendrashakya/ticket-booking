class Screen < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged

    # association
    has_many :shows
    has_many :seats

    NAME = ['SCREEN 1', 'SCREEN 2', 'SCREEN 3', 'SCREEN 4']
end
