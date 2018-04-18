

  require 'sinatra'
  require 'sinatra/contrib/all' if development?
  also_reload("./models/*")
  require_relative("./models/house.rb")
  require_relative("./models/student.rb")



  get "/students" do
    @students = Student.all()
    erb(:home)
  end

  get "/students/new" do
    @houses = House.all()
    erb(:new)
  end

  post "/students/new" do
    student = Student.new(params)
    student.save()
    redirect to "/students"
  end
