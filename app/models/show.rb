class Show < ApplicationRecord

    # mixins
    extend FriendlyId
    friendly_id :movie_name, use: :slugged
    
    
    # validations
    validates :movie_name, presence: true
    validate :check_show_duration, :check_start_time

    # association
    belongs_to :screen
    has_many :orders

    # instance methods
    def duration
        "%.2f" % ((end_time - start_time) / 60)
    end

    private
    def check_show_duration
        if start_time < end_time
          errors.add(:end_time, "can't end before start")
        end
    end

    def check_start_time
        if start_time < DateTime.now
            errors.add(:start_time, "has been already passed")
        end
    end
end
