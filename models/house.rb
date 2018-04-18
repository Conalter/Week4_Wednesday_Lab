require_relative('../database/sql_runner.rb')
require('pry-byebug')

    class House

      attr_reader :name, :url, :id

      def initialize(options)
        @id = options['id'].to_i
        @name = options['name']
        @url = options['url']
      end

      def save()
        sql = "INSERT INTO houses (name, url) VALUES ($1, $2) RETURNING id;"
        values = [@name, @url]
        result = SqlRunner.run(sql, values)
        @id = result[0]["id"].to_i
      end

      def self.all()
        sql = 'SELECT * FROM houses'
        result = SqlRunner.run(sql)
        return map_houses(result)
      end

      def self.map_houses(house_data)
        return house_data.map {|house_hash| House.new(house_hash)}
      end

      def self.delete_all
        sql = "DELETE FROM houses"
        SqlRunner.run(sql)
      end

      def self.find_by_id(id)
        sql = "SELECT * FROM houses WHERE id = $1;"
        value = [id]
        result = SqlRunner.run(sql, value)
        House.new(result[0])
      end

    end #end of class
