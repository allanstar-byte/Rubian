# Object-Relational Mapping (ORM) is the technique of accessing
#  a relational database using an object-oriented programming language.
# 
# There are a number of reasons why we use the ORM pattern. Two good ones are:

#     Cutting down on repetitive code
#     Implementing conventional patterns that are organized and sensical

# CONNECTING TO THE DB

db_connect = Sqlite3 :: Database.new("/archive/sqlite-sakila.db")