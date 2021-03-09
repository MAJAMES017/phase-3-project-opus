# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Comment.delete_all
Picture.delete_all

5.times do 
    User.create(name: Faker::Name.name)
end


p1 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/459186/1356091/main-image", 
    title: "Study for the Equestrian Monument to Francesco Sforza",
    artist: "Antonio Pollaiuolo", 
    date: "early to mid 1480s", 
    description: "This celebrated drawing was made by the Florentine painter, sculptor, engraver, and goldsmith Antonio Pollaiuolo. The sixteenth-century historian Giorgio Vasari, who owned the sheet and may have added the brown wash around the figures, seems to have described this drawing in his biography of Pollaiuolo (Lives of the Artists) of 1568. It represents a design for the bronze equestrian monument commissioned by Ludovico Sforza (1480-94, de facto ruler of Milan; 1494-99, Duke of Milan) in honor of his father, Francesco Sforza."
    )

p2 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/10786/33136/main-image", 
    title: "The Beeches",
    artist: "Asher Brown Durand", 
    date: "1845", 
    description: "This work, featuring meticulously rendered beech and basswood trees, was painted for the New York collector Abraham M. Cozzens, then a member of the executive committee of the American Art-Union. The painting illustrates a new trend in the work of the Hudson River School, with its diminished emphasis on sublime drama and increased interest in naturalism and in the creation of a tranquil mood."
    )

p3 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/362032/1599881/main-image", 
    title: "Design for the Right Pauldron of a Parade Armor",
    artist: "Attributed to Jean Cousin the Elder", 
    date: "ca. 1555", 
    description: "This design represents the front of the main plate on the right pauldron (shoulder defense) of an elaborately decorated armor. It is part of a large series of original drawings that are attributed to Etienne Delaune or Jean Cousin the Elder, artists employed by Henry II, King of France, from at least 1552 to 1559. Several armors and shields exist which were made from these drawings. Although not identical, this pauldron design is extremely similar to the decoration of two surviving armors: one made for the Holy Roman Emperor, Maximilian II (preserved in the Kunsthistorisches Museum, Vienna) and another made for Henry II, now in the Metropolitan Museum's collection (acc. no. 39.121a–n). On the armors Delaune's designs were delicately embossed in steel and then further embellished with gold and silver highlights alternating with areas of blued steel."
    )
p4 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/74980/156732/main-image", 
    title: "King Siddharta Bathing: Folio from a Kalpasutra Manuscript",
    artist: "unknown", 
    date: "15th century", 
    description: "King Siddharta, father of the jina Mahavira, having exercised and bathed in the royal bathhouse, is groomed by a male attendant, who combs his long hair in preparation for being dressed, perfumed, and bejeweled. He is to be adorned 'like a grant-wishing tree' says the Kalpasutra, in anticipation of telling Queen Trisala the meaning of her dreams."
    )

p5 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/11834/15035/main-image", 
    title: "Leatherstocking's Rescue",
    artist: "John Quidor", 
    date: "1832", 
    description: "While better known for his paintings based on the writings of Washington Irving, Quidor also painted scenes from the popular novels of James Fenimore Cooper. In this episode from The Pioneers (1823), the woodsman Natty Bumppo, also known as Leatherstocking, rescues two comely young women from a female panther, which, in protecting her cub, destroyed their dog and then turned, threateningly, to them. Quidor enhanced the fantastic and horrific aspects of the story in the highly stylized setting of twisted tree trunks and roots, which take on menacing shapes."
    )

    5.times do
        Comment.create(comment: Faker::TvShows::NewGirl.quote, user: User.all.sample, picture: Picture.all.sample)
    end

    
puts "a fresh batch of seeds has been planted"