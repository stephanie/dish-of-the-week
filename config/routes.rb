DishOfTheWeek::Application.routes.draw do
  scope :api do
    resources :restaurants, except: [ :show, :new, :edit ], 
    defaults: { format: :json } do
      get ':id' => 'restaurants#index', on: :collection
    end
  end

  root 'restaurants#index'
end
