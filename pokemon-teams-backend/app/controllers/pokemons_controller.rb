require 'faker'

class PokemonsController < ApplicationController
    def index
        pokemons = Pokemon.all
        render json: pokemons
    end

    # def show
    #     @pokemon = Pokemon.find(params[:id])
    #     render json: @pokemon
    # end

    def create
        pokemon = Pokemon.create(nickname: Faker::Name.name , species: Faker::Games::Pokemon.name, trainer_id: params["trainer_id"])
        render json: pokemon
    end

    def destroy
        pokemon = Pokemon.find(params[:id])
        render json: pokemon.destroy
    end
end
