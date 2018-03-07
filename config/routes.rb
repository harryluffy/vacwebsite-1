Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'welcome/' => 'welcome#index'
  
  root 'welcome#index'
  
  get 'advisory_board' => 'welcome#advisory_board'
  
# SIGN UP / LOGIN

  get 'signup' => 'welcome#signup'
  
  get 'login' => 'welcome#login'
  
# PASSENGERS ----------------------

  get 'passengers/' => 'passengers#index'
  
  get 'passengers/travel' => 'passengers#travel'
  
  get 'passengers/faq' => 'passengers#faq'
  
# PILOTS ----------------------
  
  get 'pilots' => 'pilots#index'
  
  get 'pilots/register' => 'pilots#register'
  
  get 'aircraft_registration' => 'pilots#aircraft_registration'
  
  get 'pilots/faq' => 'pilots#faq'
  
  get 'pilots/available_missions' => 'pilots#available_missions'
  
  resources :missions
  
  get 'pilots/recognition' => 'pilots#recognition'
  
  get 'pilots/mission_control' => 'pilots#mission_control'
  
# DONATE -----------------------

  get 'donate' => 'donate#index'
  
  get 'donors' => 'donate#donors'
  
  get 'pilot_and_owner_recognition' => 'donate#recognition'
  
  get 'corporate_recognition' => 'donate#corporate_recognition'
  
  get 'memorial_wall' => 'donate#memorial_wall'
  
end
