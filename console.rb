    require_relative('models/house')
    require_relative('models/student')

    require('pry-byebug')

    Student.delete_all()
    House.delete_all()

    house1 = House.new({
      'name' => 'Gryffindor',
      'url' => 'placeholder'
      })
    house1.save()

    house2 = House.new({
      'name' => 'Ravenclaw',
      'url' => 'placeholder'
      })
    house2.save()

    house3 = House.new({
      'name' => 'Hufflepuff',
      'url' => 'placeholder'
      })
    house3.save()

    house4 = House.new({
      'name' => 'Slytherin',
      'url' => 'placeholder'
      })
    house4.save()

    student1 = Student.new({
      'first_name' => 'Jimmy',
      'last_name' => 'Smith',
      'house_id' => house1.id,
      'age' => 14
    })
    student1.save()

    student2 = Student.new({
      'first_name' => 'Davie',
      'last_name' => 'McFortingale',
      'house_id' => house2.id,
      'age' => 48
    })
    student2.save()

    student3 = Student.new({
      'first_name' => 'Jenny',
      'last_name' => 'McJenny',
      'house_id' => house3.id,
      'age' => 18
    })
    student3.save()

    student4 = Student.new({
      'first_name' => 'Susan',
      'last_name' => 'Opinhimmer',
      'house_id' => house4.id,
      'age' => 10
    })
    student4.save()

    binding.pry
    nil
