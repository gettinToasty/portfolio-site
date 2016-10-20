Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'landing#index'

  resources :designs

  get '/apps', to: 'apps#index'

  get '/apps/sketch', to: 'apps#sketch'

  get '/apps/cypher', to: 'cypher#index'

  get '/apps/cypher/encode', to: 'cypher#encode'

  get '/apps/cypher/decode', to: 'cypher#decode'

  get '/fashion', to: 'fashion#index'

end
