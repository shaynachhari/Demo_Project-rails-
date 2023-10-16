Rails.application.routes.draw do

  # get 'employee/:id',to: "employees#watch"
  # get 'employee/', to: "employees#index"

  root 'student#index'
  get 'student', to: "students#index" 
  get 'student/:id', to: "students#show"
  get 'student/new',to: "students#new"

  post 'student/', to: 'students#create'
  get 'student/:id/edit', to: 'students#edit', as:'edit_student'
  patch 'student/:id', to: 'students#update'
  
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
