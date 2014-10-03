# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

properties_list = [
    [ "Property #1", "Bs As" ],
    [ "Property #2", "San Pablo" ],
    [ "Property #3", "Bogota" ]
]

properties_list.each do |name, location, email|
  Property.find_or_create_by( name: name, location: location, email: email )
end