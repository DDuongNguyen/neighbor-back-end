# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Invite.destroy_all


duong= User.create(name: "yoon", username: 'yoon', password: 'yoon', phone_number: 999, address:'111 meowmeow, meowmeow st, mewgarden, meowyork' )
daniela= User.create(name: "daniela", username: 'daniela', password: 'daniela', phone_number: '888', address:'222 moomoo, moo st, mooford, meowyork' )
momo= User.create(name: "momo", username: 'momo', password: 'momo', phone_number: '999', address:'111 poo, poo st, poopie, meowyork' )

event1= Event.create(user_id:duong.id, name:'BBQ', description:'grilling meat', time:'11/11/2019')
event2= Event.create(user_id:daniela.id, name:'dnd', description:'berries', time:'12/11/2019')
event3= Event.create(user_id:momo.id, name:'twirling', description:'snek attak', time:'11/21/2019')

invitation1= Invite.create(inviter:duong, invitee:daniela, event: event1)
invitation2= Invite.create(inviter:duong, invitee:momo, event: event1)
invitation3= Invite.create(inviter:daniela, invitee:duong, event: event2)
invitation4= Invite.create(inviter:daniela, invitee:momo, event: event2)
invitation5= Invite.create(inviter:momo, invitee:duong, event: event3)
invitation6= Invite.create(inviter:momo, invitee:daniela, event: event3)

message1= Message.create(sender:duong, receiver:daniela, content:'who is da bes?')
message1= Message.create(sender:daniela, receiver:duong, content:'u is da bes')




p "SEEDED! 🐈"
