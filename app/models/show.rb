class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        max = Show.maximum(:rating)
        Show.find_by(rating: max)
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        less = Show.minimum(:rating)
        Show.find_by(rating: less)
    end

    def self.ratings_sum
        Show.all.sum(:rating)
    end

    def self.popular_shows
        Show.all.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end