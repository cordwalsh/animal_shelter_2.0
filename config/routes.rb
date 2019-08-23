Rails.application.routes.draw do
    resources :pets
    get "pet/random" => 'pets#random'
end
