Rails.application.routes.draw do
  root 'student#index'
  get 'students', to: "students#index" ,as:'students'
  get 'students/:id', to: "students#show" , as:'student'
  get 'student/new',to: "students#new"

  post 'students/', to: 'students#create'
  get 'students/:id/edit', to: 'students#edit', as:'edit_student'
  put 'student/:id', to: 'students#update'
  delete 'students/:id', to: 'students#destroy', as: 'delete_student'
  # resources  :students
  
  #  use of CRUD
  get 'photos', to: 'photos#index', as: 'photos'
  get 'photos/:id', to: 'photos#show', as: 'photo'
  get 'photo/new',to: 'photos#new'

  post 'photos', to: 'photos#create'
  get 'photos/:id/edit', to: 'photos#edit',as: 'edit_photo' 
  patch 'photos/:id', to: 'photos#update'
  # delete 'photos/:id', to: 'photos#edit'
  delete 'photos/:id', to: 'photos#destroy', as: 'delete_photo'
end
