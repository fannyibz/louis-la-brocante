puts "> Deleting all records..."
Message.destroy_all
Chatroom.destroy_all
Ad.destroy_all
User.destroy_all

puts ">>>> Creating users..."
ringo = User.create(email: "ringo@mail.com", password: '123456')
john = User.create(email: "john@mail.com", password: '123456')
puts "#{User.count} user(s) created"

puts ">>>> Creating ads for Ringo..."
sofa = Ad.create(user: User.find_by(email: 'john@mail.com'), name: 'Super canapé', department: 'Meuble', description: 'Canapé en velour bleu. Très peu utilisé!', price: 300)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642191900/louis-la-brocante/ymvz9i8k4qhnadza4hys.jpg")
sofa.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
sofa.save!
design_lamp= Ad.create(user: User.find_by(email: 'john@mail.com'), name: 'Lampe design', department: 'Décoration', description: 'Belle lampe, très design', price: 90)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642191927/louis-la-brocante/5708311200038-mr.-wattson-bordlampe-chiltern-green---piffany_1_dhi61a.webp")
design_lamp.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
design_lamp.save!
storage_cabinet = Ad.create(user: User.find_by(email: 'john@mail.com'), name: 'Meuble Kallax Ikéa', department: 'Meuble', description: 'Meuble de rangement très pratique', price: 30)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642192016/louis-la-brocante/kallax-etagere-blanc__0644753_pe702937_s5_onogxb.jpg")
storage_cabinet.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
storage_cabinet.save!
puts "#{Ad.count} ad(s) created"

puts ">>>> Creating ads for John..."
bedside_lamp = Ad.create(user: User.find_by(email: 'ringo@mail.com'), name: 'Lampe de chevet', department: 'Décoration', description: 'Lampe de chevet très pratique.', price: 23)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642192579/louis-la-brocante/knixhult-lampe-de-table-bambou-fait-main__0881050_pe707852_s5_jgsxay.jpg")
bedside_lamp.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
bedside_lamp.save!
pushchair = Ad.create(user: User.find_by(email: 'ringo@mail.com'), name: 'Poussette', department: 'Bébé', description: 'Poussette encore en très bonne état', price: 160)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642192916/louis-la-brocante/Yoyo-babyzen-meilleure-poussette-760x1024_essatv.jpg")
pushchair.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
pushchair.save!
bunk_bed = Ad.create(user: User.find_by(email: 'ringo@mail.com'), name: 'Lits superposés', department: 'Meuble', description: 'Lits superposés pour enfant, encore neuf.', price: 230)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642192869/louis-la-brocante/lit-superpose-combine-harry-avec-rangements-pour-enfant_yeq1de.jpg")
bunk_bed.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
bunk_bed.save!
toy = Ad.create(user: User.find_by(email: 'ringo@mail.com'), name: 'Jouet Montessori', department: 'Jouets', description: 'Jeux Montessori pour les enfants de 2 ans. Utilisé mais peu encore servir.', price: 11)
file = URI.open("https://res.cloudinary.com/dcwc5yx5t/image/upload/v1642191869/louis-la-brocante/bo-te-de-notion-de-permanence-de-l-objet-31155510_6_jjc9qu.jpg")
toy.photo.attach(io: file, filename: "photo", content_type: "image/jpg")
toy.save!
puts "#{Ad.count} ad(s) created"

puts ">>>> Creating chatrooms..."
chat_1 = Chatroom.create(name: "Chat", user_id: john.id , ad_id: bedside_lamp.id)
chat_2 = Chatroom.create(name: "Chat", user_id: ringo.id, ad_id: sofa.id)
puts "#{Chatroom.count} chatroom(s) created"

puts ">>>> Creating messages..."
Message.create(chatroom_id: chat_1.id, user_id:john.id, ad_id: bedside_lamp.id, content: 'Bonjour')
Message.create(chatroom_id: chat_1.id, user_id:ringo.id, ad_id: bedside_lamp.id, content: 'hey')
Message.create(chatroom_id: chat_2.id, user_id:john.id, ad_id: sofa.id, content: "Bonjour, je suis intéressé par votre canapé. Pourriez-vous m'envoyer d'autres photo, svp?")
Message.create(chatroom_id: chat_2.id, user_id:ringo.id, ad_id: sofa.id, content: 'Oui avec plaisir.')
puts "#{Message.count} message(s) created"