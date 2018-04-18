

  require 'sinatra'
  require 'sinatra/contrib/all' if development?
  also_reload("./models/*")

  require_relative("./models/student.rb")



  get "/" do
    @students = Student.all()
    erb(:home)
  end
