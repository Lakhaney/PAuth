Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  post '/generate' => 'verifications#generate_code'
  post '/verify' => 'verifications#verify_code'
end
