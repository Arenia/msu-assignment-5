Rails.application.routes.draw do
  resources :sections_students
  resources :sections do
    collection do
      get 'search'
    end
  end
  resources :courses do
    collection do
      get 'search'
    end
  end
  resources :departments do
    collection do
      get 'search'
    end
  end
  resources :semesters do
    collection do
      get 'search'
    end
  end
  resources :professors do
    collection do
      get 'search'
    end
  end
  resources :students do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
