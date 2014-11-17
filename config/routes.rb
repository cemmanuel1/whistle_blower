Wb::Application.routes.draw do
  root to: 'whistle_blower_singles#new'
  resources "whistle_blower_singles", only: [:new, :create]

  match '/whistle_blower_multis',     to: 'whistle_blower_multis#new',             via: 'get'
  resources "whistle_blower_multis", only: [:new, :create]
end
