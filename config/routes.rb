Rails.application.routes.draw do
  # get 'articles/index'

  # get 'articles/show'

  # get 'articles/create'

  # get 'articles/new'

  # get 'articles/update'

  # get 'articles/edit'

  # get 'articles/destroy'
resources :articles
root to: 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
