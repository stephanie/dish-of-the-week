DishOfTheWeek::Application.routes.draw do

  scope :api, defaults: { format: :json } do

    resources :restaurants, except: [ :show, :new, :edit ] do
        get ':id' => 'restaurants#index', on: :collection

      resources :dishes, except: [ :show, :new, :edit ] do
        get ':id' => 'dishes#index', on: :collection
      end

      resources :submissions, except: [ :show, :new, :edit ] do
        get ':id' => 'submissions#index', on: :collection
      end
    end

    resources :dishes, except: [ :show, :new, :edit ] do
      get ':id' => 'dishes#index', on: :collection

      resources :submissions, except: [ :show, :new, :edit ] do
        get ':id' => 'submissions#index', on: :collection
      end
    end
    
    resources :curated_posts, except: [ :show, :new, :edit ] do
      collection do
        get 'random' => 'curated_posts#show'
        get ':id' => 'curated_posts#index'
      end
    end

    resources :submissions, except: [ :show, :new, :edit ] do
      get ':id' => 'submissions#index', on: :collection
    end

  end

  resources :restaurants, only: [ :new, :edit ]
  resources :curated_posts, only: [ :new, :edit ]

  root 'site#index'

end
