MSCCalendar::Application.routes.draw do
  resources :calendars
  resources :jobs
  root to: 'calendars#index'
end
