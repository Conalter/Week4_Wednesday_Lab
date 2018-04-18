
    require_relative('models/student')

    require('pry-byebug')


    student1 = Student.new({
      'first_name' => 'Jimmy',
      'last_name' => 'Smith',
      'house' => 'Gryffindor',
      'age' => 14
    })
    student1.save()

    




    binding.pry
    nil
