Dummy::Application.routes.draw do
  resource :test, controller: :test, only: [] do
    member do
      post :ajax
    end
  end
  root to: 'test#index'
end
