DishOfTheWeek::Application.routes.draw do
  scope :api do
    resources :restaurants, except: [ :show, :new, :edit ], 
    defaults: { format: :json } do
      get ':id' => 'restaurants#index', on: :collection

      resources :dishes, except: [ :show, :new, :edit ], 
      defaults: { format: :json } do
        get ':id' => 'restaurants#index', on: :collection
      end
      resources :submissions, except: [ :show, :new, :edit ], 
      defaults: { format: :json } do
        get ':id' => 'restaurants#index', on: :collection
      end
      resources :curated_posts, except: [ :show, :new, :edit ], 
      defaults: { format: :json } do
        get ':id' => 'restaurants#index', on: :collection
      end
    end
    resources :users, except: [ :show, :new, :edit ], 
    defaults: { format: :json } do
      get ':id' => 'users#index', on: :collection

      resources :submissions, except: [ :show, :new, :edit ], 
      defaults: { format: :json } do
        get ':id' => 'users#index', on: :collection
      end
    end
    resources :submissions, except: [ :show, :new, :edit ], 
    defaults: { format: :json }
    resources :dishes, except: [ :show, :new, :edit ], 
    defaults: { format: :json }
  end

  root 'site#index'

end
