Rails.application.routes.draw do
  root to: "visitors#home"
 #  resources :visitors do
	#   match "/blogs", :to => "visitors#blogs", :as => "like"
	# end

	resources :visitors, only: [:index] do
    collection do
      get :blogs
    end
  end


  devise_for :users
	devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :articles do
	  resources :comments
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
