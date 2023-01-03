puts "seeding!"

toby = Role.create!(character_name: "Toby, The Office")

paul = Audition.create(role_id: toby.id, actor: "Paul", location: "LA", phone: "(832) 555- 4343", hired: false) 

mike = Audition.create(role_id: toby.id, actor: "Mike", location: "Lansing", phone: "(333) 333-3333)", hired: false) 

puts "done seeding!"


