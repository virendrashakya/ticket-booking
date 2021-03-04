class Show < ApplicationRecord

    # mixins
    extend FriendlyId
    friendly_id :movie_name, use: :slugged
    
    TIMINGS = [
        {
            start_time: '2021-03-06 09:00',
            end_time: '2021-03-06 12:00'
        },
        {
            start_time: '2021-03-06 12:00',
            end_time: '2021-03-06 15:00'
        },
        {
            start_time: '2021-03-06 15:00',
            end_time: '2021-03-06 18:00'
        },
        {
            start_time: '2021-03-06 18:00',
            end_time: '2021-03-06 21:00'
        },
        {
            start_time: '2021-03-05 09:00',
            end_time: '2021-03-05 12:00'
        },
        {
            start_time: '2021-03-05 12:00',
            end_time: '2021-03-05 15:00'
        },
        {
            start_time: '2021-03-05 15:00',
            end_time: '2021-03-05 18:00'
        },
        {
            start_time: '2021-03-05 18:00',
            end_time: '2021-03-05 21:00'
        }
    ]

    MOVIE_NAME = [
        'The Shawshank Redemption',
        'The Godfather',
        'The Dark Knight',
        '12 Angry Men',
        'Forrest Gump',
        'Inception',
        'Star Wars',
        'The Matrix',
        'Goodfellas',
        'Se7en',
        'Saving Private Ryan'
    ]
    
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
        if start_time > end_time
            errors.add(:end_time, "can't end before start")
        end
    end

    def check_start_time
        if start_time < DateTime.now
            errors.add(:start_time, "has been already passed")
        end
    end
end
