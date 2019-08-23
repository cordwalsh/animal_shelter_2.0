require 'rails_helper'
require 'factory_bot_rails'


describe "get all pets route", :type => :request do
  let!(:pets) { FactoryBot.create_list(:pets, 20)}

  before { get '/pets'}

  it 'returns all pets' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
 # maybe this will work
