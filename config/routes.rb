Rails.application.routes.draw do
  resources :tasks do 
    member do
      patch :toggle_complete
    end
    collection do
      get 'completed', to: 'tasks#completed_tasks'
      get 'incomplete', to: 'tasks#incomplete_tasks'
    end
  end


  root "tasks#index"
end
