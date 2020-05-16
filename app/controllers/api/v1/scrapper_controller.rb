require 'nokogiri'
require 'open-uri'

class Api::V1::ScrapperController < ApplicationController

    def index
        @response = {
            title: "YTS - WEB Scrapper",
            endpoints: [{
                searchMovies: "api/v1/search/:title"
            }],
            link_of_project: "",
            message: "Don't to forget put a star ;)"
        }
        render json: @response, status: :ok
    end

    def searchMovies
        @response = {
            message: "Filmes encontrados",
            data: getMovies
        }
        render json: @response, status: :ok
    end

    private
    def get_param
        params.require(:title)
    end

    def getMovies
        source = Nokogiri::HTML(URI('https://yts.mx/browse-movies/'+params.require(:title)+'/all/all/0/latest/0/all').open())
        arrayMovies = []

        source.search('div.row div.browse-movie-wrap').each do |moviesContainer|
            movie = {}

            moviesContainer.search('a.browse-movie-link').each do |movieLinkNode|
                movie[:"movie_link"] = movieLinkNode["href"]
                movieLinkNode.search('img.img-responsive').each do |imgMovieNode|
                    movie[:"img_movie_link"] = imgMovieNode["src"]
                end
            end

            moviesContainer.search('div.browse-movie-bottom').each do |movieDetails|
                movieDetails.search('a.browse-movie-title').each do |movieTitle|
                    movie[:"movie_title"] = (movieTitle.children).to_s
                end

                movieDetails.search('div.browse-movie-year').each do |movieYear|
                    movie[:"movie_year"] = (movieYear.children).to_s
                end
            end
            arrayMovies.push(movie)
        end
        return arrayMovies
    end
end
