class PetsController < ApplicationController

  def index
    name = params [:name]
    @pets = Pet.search(name)
    json_response(@pets)
  end

  def show
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  # def post
  #   @pet = Pet.find(params[:id])
  #   json_response(@pet)
  # end

  def create
    @pet = Pet.create!(pet_params)
    json_response(@pet, :created)
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update!(pet_params)
      render status: 200, json: {
        message: "This pet has been updated successfully"
      }
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

  def random
    @pet = Pet.random
    json_response(@pet)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def pet_params
    params.permit(:type_of_animal, :name, :age, :gender)
  end
end
