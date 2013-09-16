MSCCalendar::Application.routes.draw do
  resources :clients
  resources :calendars
  resources :jobs
  root to: 'calendars#index'
end
