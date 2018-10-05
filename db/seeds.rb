# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sender1 = Sender.create({name: 'Madeline', user_name: 'maddie'});
sender2 = Sender.create({name: 'Uniqueness the sweetness', user_name: "Sweetie"})
sender3 = Sender.create({name: 'Harry Potter', user_name: 'Sir Harry'})
sender4 = Sender.create({name: 'Lisa Kelly', user_name:'Lisa Left Eye' })
receiver1 = Receiver.create({name: 'Jason', user_name: 'junior'});
receiver2 = Receiver.create({name: 'Billy', user_name: 'William'});
receiver3 = Receiver.create({name: 'Da\'shell', user_name: 'juicy'});
conversation = Conversation.create({sender_id: 1, receiver_id: 1});
# message = Message.create({content: 'first message', conversation_id: 1, sender_id: sender1.id});
# message2 = Message.create({content: 'Yo mama', conversation_id: 1, sender_id: sender2.id});
# message3 = Message.create({content: 'Da Fuq', conversation_id: 1, sender_id: sender4.id});
conversation2 = Conversation.create({sender_id: sender3.id, receiver_id: receiver3.id});
