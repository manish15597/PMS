Rails.application.routes.draw do

  resources :courses
  resources :faculties
  resources :students
  get 'home/index'

  get 'layouts/application'

	devise_for :users, contrllers:{
      sessions: 'users/sessions',
  		registration: "users/registrations"
  }

	devise_scope :user do
	  authenticated :user do
				root 'home#index', as: :authenticated_root
	  end

	  unauthenticated do
	    root 'devise/sessions#new', as: :unauthenticated_root
	  end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get "users/student/sessions" => "students#edit1", :as => "edit1_student"
	get "users/faculty/sessions" => "faculties#edit1", :as => "edit1_faculty"

  get "users/faculty/course_new" => "courses#new", :as => "create_course"
	get "users/student/course_choose" => "student_courses#new", :as => "choose_course"

  get "users/faculty/myCourses" => "courses#indexFac", :as => "faculty_mycourse"
	get "users/student/myCourses" => "student_courses#indexStu", :as => "student_mycourse"
end
