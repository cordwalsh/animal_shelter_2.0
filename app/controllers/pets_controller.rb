class PetsController < ApplicationController

  def index
    @pets = Pet.all
    json_response(@pets)
  end

  def show
    @pet = Pet.find(params[:id])
    json_response(@pet)
  end

  def create
    @pet = Pet.create(pet_params)
    json_response(@pet)
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def pet_params
    params.permit(:type_of_animal, :name, :age, :gender)
  end
end
