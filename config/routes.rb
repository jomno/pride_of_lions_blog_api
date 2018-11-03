Rails.application.routes.draw do
  scope format: false do
    scope module: 'api' do
      namespace :v1 do
        resources :blogs
      end
    end
  end
  # root "blogs#index"
  # get 'blogs/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
