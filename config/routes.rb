Rails.application.routes.draw do
  # existing routes here

  resources :students, only: [:index, :show]
  get '/students', to: 'students#index'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'

  # new route for individual student
  get '/students/:id', to: 'students#show', as: 'student'
end
