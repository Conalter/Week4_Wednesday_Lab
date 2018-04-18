require_relative('../database/sql_runner.rb')
require('pry-byebug')

    class Student

      attr_reader :first_name, :last_name, :house_id, :age, :id

      def initialize(options)
          @id = options ['id'].to_i
          @first_name = options ['first_name']
          @last_name = options ['last_name']
          @house_id = options ['house_id'].to_i
          @age = options ['age'].to_i
      end

      def save()
        sql = "INSERT INTO students (first_name, last_name, house_id, age)
        VALUES ($1, $2, $3, $4) RETURNING id;"
        values = [@first_name, @last_name, @house_id, @age]
        result = SqlRunner.run(sql, values)
        @id = result[0]["id"].to_i
      end

      def self.all()
        sql = 'SELECT * FROM students'
        result = SqlRunner.run(sql)
        return map_students(result)
      end

      def self.map_students(student_data)
        return student_data.map {|student_hash| Student.new(student_hash)}
      end

      def self.delete_all
        sql = "DELETE FROM students"
        SqlRunner.run(sql)
      end

      def self.find_by_id(id)
        sql = "SELECT * FROM students WHERE id = $1;"
        value = [id]
        result = SqlRunner.run(sql, value)
        Student.new(result[0])
      end

      def get_house
          sql = "SELECT * FROM houses WHERE id = $1"
          values = [@house_id]
          result = SqlRunner.run(sql, values)
          return House.new(result[0])
      end

    end #end of class
