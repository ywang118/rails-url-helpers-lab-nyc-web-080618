Rails.application.routes.draw do
  # resources :students, only: :index

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  get "students/:id", to: "students#show", as: "student"

  get "students", to: "students#index", as: "students"

  get "students/:id/active", to: "students#active", as: "activate_student"

end
