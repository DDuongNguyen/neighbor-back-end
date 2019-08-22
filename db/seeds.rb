# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require  'faker'
require 'geocoder'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Invite.destroy_all



duong= User.create(name: "yoon", username: 'yoon', password: 'yoon', phone_number: '347-925-2777', address:'77 E 4th St, New York, NY 10003', address_latitude:'40.573255', address_longtitude:'-73.990128')

daniela= User.create(name: "daniela", username: 'daniela', password: 'daniela', phone_number: '347-779-6558', address:'18 E Broadway, New York, NY 10002',address_longtitude:'-73.997185', address_latitude:'40.713684'  )

momo= User.create(name: "momo", username: 'momo', password: 'momo', phone_number: '347-925-2777', address:'425 Lafayette St, New York, NY 10003', address_longtitude: '-73.991768',address_latitude:'40.729210'  )

coulson= User.create(name: "coulson", username: 'coulson', password: 'coulson', phone_number: '631-827-0917', address:'113 St Marks Pl, New York, NY 10009' ,address_longtitude:'-73.983727' ,address_latitude:'40.727169' )

buck= User.create(name: "buck", username: 'buck', password: 'buck', phone_number: '347-925-2777', address:'443 E 6th St, New York, NY 10009',address_longtitude:'-73.984300',address_latitude:'40.725820'  )

caitlin= User.create(name: "caitlin", username: 'caitlin', password: 'caitlin', phone_number: '631-371-7351', address:'505 E 12th St, New York, NY 10009',address_longtitude:'-74.001926',address_latitude:'40.710131'  )

nolan= User.create(name: "nolan", username: 'nolan', password: 'nolan', phone_number: '347-925-2777', address:'146 Essex St, New York, NY 10002', address_longtitude:'-73.980830',address_latitude:'40.729030'  )

george= User.create(name: "george", username: 'george', password: 'george', phone_number: '347-925-2777', address:'199 Bowery, New York, NY 10002', address_longtitude:'-73.993263',address_latitude:'40.721039'  )

james= User.create(name: "james", username: 'james', password: 'james', phone_number: '347-925-2777', address:'185 Bleecker St Suite B, New York, NY 10012',address_longtitude:'-73.993263',address_latitude:'40.721039'  )

coral= User.create(name: "coral", username: 'coral', password: 'coral', phone_number: '347-925-2777', address:'32 Spring St, New York, NY 10012', address_longtitude:'-73.995728',address_latitude:'40.721500'  )

coral= User.create(name: "memeow", username: 'memeow', password: 'memeow', phone_number: '347-925-2777', address:'105 Mulberry St, New York, NY 10013', address_longtitude:'-73.998550',address_latitude:'40.717350'  )

time= Time.at(rand * Time.now.to_i)

event1= Event.create(user_id:duong.id, name:'BBQ', description:'grilling meat', time:time)
event2= Event.create(user_id:daniela.id, name:'dnd', description:'berries', time:time)
event3= Event.create(user_id:momo.id, name:'twirling', description:'snek attak', time:time)
event4= Event.create(user_id:coulson.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event5= Event.create(user_id:buck.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event6= Event.create(user_id:caitlin.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event7= Event.create(user_id:george.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event8= Event.create(user_id:coral.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event9= Event.create(user_id:james.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event10= Event.create(user_id:nolan.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event11= Event.create(user_id:daniela.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)
event12= Event.create(user_id:momo.id, name:Faker::Superhero.power, description:Faker::Marketing.buzzwords, time:time)

events=[event1,
event2,
event3,
event4,
event5,
event6,
event7,
event8,
event9,
event10,
event11,
event12]

people=[coulson,
  buck,
  caitlin,
  nolan,
  george,
  james,
  coral]

invitation1= Invite.create(inviter:duong, invitee:nolan, event: event1)
invitation2= Invite.create(inviter:coulson, invitee:duong, event: event4)
invitation3= Invite.create(inviter:buck, invitee:duong, event: event5)
invitation4= Invite.create(inviter:caitlin, invitee:duong, event: event6)
invitation5= Invite.create(inviter:george, invitee:duong, event: event7)
invitation6= Invite.create(inviter:james, invitee:duong, event: event9)
invitation7= Invite.create(inviter:coral, invitee:momo, event: event8)
invitation8= Invite.create(inviter:nolan, invitee:momo, event: event10)
invitation9= Invite.create(inviter:daniela, invitee:momo, event: event2)
invitation10= Invite.create(inviter:daniela, invitee:george, event: event2)
invitation11= Invite.create(inviter:daniela, invitee:momo, event: event11)
invitation12= Invite.create(inviter:daniela, invitee:coulson, event: event11)
invitation13= Invite.create(inviter:momo, invitee:caitlin, event: event3)
invitation14= Invite.create(inviter:momo, invitee:daniela, event: event3)
invitation15= Invite.create(inviter:momo, invitee:buck, event: event3)
invitation16= Invite.create(inviter:momo, invitee:daniela, event: event12)
invitation17= Invite.create(inviter:momo, invitee:coral, event: event12)
invitation18= Invite.create(inviter:momo, invitee:coulson, event: event12)

message1= Message.create(sender:duong, receiver:daniela, content:'who is da bes?')
message1= Message.create(sender:daniela, receiver:duong, content:'u is da bes')




p "SEEDED! 🐈"
