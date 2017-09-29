class Movie < ActiveRecord::Base
    def self.get_rating()
        Movie.select(:rating).distinct
    end
    def self.all_ratings
        %w(G PG PG-13 NC-17 R)    
    end
end
