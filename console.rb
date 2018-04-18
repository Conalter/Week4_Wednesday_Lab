
    require_relative('models/student')

    require('pry-byebug')

    Student.delete_all()

    student1 = Student.new({
      'first_name' => 'Jimmy',
      'last_name' => 'Smith',
      'house' => 'Gryffindor',
      'age' => 14
    })
    student1.save()

    student2 = Student.new({
      'first_name' => 'Davie',
      'last_name' => 'McFortingale',
      'house' => 'Ravenclaw',
      'age' => 48
    })
    student2.save()

    student3 = Student.new({
      'first_name' => 'Jenny',
      'last_name' => 'McJenny',
      'house' => 'Hufflepuff',
      'age' => 18
    })
    student3.save()

    student4 = Student.new({
      'first_name' => 'Susan',
      'last_name' => 'Opinhimmer',
      'house' => 'Slytherin',
      'age' => 10
    })
    student4.save()


    binding.pry
    nil
