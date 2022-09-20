# The Active Record conventions and why programmers use them
# Active Record query methods
# Using Active Record to create a table

# Active Record (Links to an external site.) Ruby gem.

# gem install activerecord

require "pry"
require "active_record"

# Setup a database connection
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/students.sqlite"
)

# Create a Students table
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    Age INTEGER
  )
SQL
ActiveRecord::Base.connection.execute(sql)

# Log SQL output to the terminal
ActiveRecord::Base.logger = Logger.new(STDOUT)

# Have the Student class inherit from ActiveRecord::Base
class Student < ActiveRecord::Base
end

binding.pry
""
