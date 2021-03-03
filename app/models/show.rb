class Show < ApplicationRecord

    extend FriendlyId
    friendly_id :movie_name, use: :slugged

    # association
    belongs_to :screen
    has_many :orders

    # instance methods

    def duration
        "%.2f" % ((end_time - start_time) / 60)
    end
end
