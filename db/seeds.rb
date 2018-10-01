# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sender1 = Sender.create({name: 'Madeline', user_name: 'maddie'});
reciever1 = Reciever.create({name: 'Jason', user_name: 'junior'});
conversation = Conversation.create({sender_id: 1, reciever_id: 1});
message = Message.create({content: 'first message', conversation_id: 1});
