class Movie < ActiveRecord::Base

def self.create_with_title(title)
    Movie.create(title: title)
end

def self.first_movie
    all = Movie.all
    all.first 
end

def self.last_movie
    all=Movie.all
    all=Movie.last
end

def self.movie_count
    all = Movie.all
    all.count 
end

def self.find_movie_with_id(id)
    Movie.find(id==id)
end

def self.find_movie_with_attributes(attributes)
    Movie.find(attributes==attributes)
end

def self.find_movies_after_2002
    Movie.where("release_date > 2002")
end

def update_with_attributes(title)
    self.update(title)
end

def self.update_all_titles(title)
    Movie.update(title: title)
end

def self.delete_by_id(id)
    destroy(id==id)
end

def self.delete_all_movies
    Movie.destroy_all
end

end