# require 'rails_helper'
# require 'factory_bot_rails'
#
# describe "post a pet route", :type => :request do
#
#   before do
#     create '/pets', params: { :type_of_animal => 'test_type_of_animal', :name => 'test_name', :age => 'test_age', :gender => 'test_gender' }
#   end
#
#   it 'returns the pet name' do
#     expect(JSON.parse(response.body)['name']).to eq('test_name')
#   end
#
#   it 'returns the animal type' do
#     expect(JSON.parse(response.body)['type_of_animal']).to eq('test_type_of_animal')
#   end
#
#   it 'returns the age of pet' do
#     expect(JSON.parse(response.body)['age']).to eq('test_age')
#   end
#
#   it 'returns the gender of pet' do
#     expect(JSON.parse(response.body)['gender']).to eq('test_gender')
#   end
#
#
#
#   it 'returns a created status' do
#     expect(response).to have_http_status(:created)
#   end
# end
