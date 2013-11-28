DishOfTheWeek::Application.routes.draw do

  scope :api do

    resources :restaurants, except: [ :show, :new, :edit ], defaults: { format: :json } do
        get ':id' => 'restaurants#index', on: :collection
      resources :dishes, except: [ :show, :new, :edit ] do
        get ':id' => 'dishes#index', on: :collection
      end
      resources :submissions, except: [ :show, :new, :edit ] do
        get ':id' => 'submissions#index', on: :collection
      end
    end

    resources :dishes, except: [ :new, :edit ], defaults: { format: :json } do
      get ':id' => 'dishes#index', on: :collection

      resources :submissions, except: [ :show, :new, :edit ], defaults: { format: :json } do
        get ':id' => 'submissions#index', on: :collection
      end
    end
    
    resources :curated_posts, except: [ :show, :new, :edit ], defaults: { format: :json } do
        get 'random' => 'curated_posts#show', on: :collection
        get ':id' => 'curated_posts#index', on: :collection
    end

    resources :submissions, except: [ :show, :new, :edit ], defaults: { format: :json } do
      get ':id' => 'submissions#index', on: :collection
    end

  end

  resources :dishes

  get 'restaurants/new' => 'restaurants#new'
  get 'curated_posts/new' => 'curated_posts#new'

  root 'site#index'

end
