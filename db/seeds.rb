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
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/27552/66078/main-image", 
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
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/436535/796067/main-image", 
    title: "Wheat Field with Cypresses",
    artist: "Vincent van Gogh", 
    date: "1889", 
    description: "Cypresses gained ground in Van Gogh’s work by late June 1889 when he resolved to devote one of his first series in Saint-Rémy to the towering trees. Distinctive for their rich impasto, his exuberant on-the-spot studies include the Met’s close-up vertical view of cypresses (49.30) and this majestic horizontal composition, which he illustrated in reed-pen drawings sent to his brother on July 2. Van Gogh regarded the present work as one of his “best” summer landscapes and was prompted that September to make two studio renditions: one on the same scale (National Gallery, London) and the other a smaller replica, intended as a gift for his mother and sister."
    )

    p6 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/24937/60394/main-image", 
    title: "Armor of Infante Luis, Prince of Asturias",
    artist: "Signature probably refers to Jean Drouart", 
    date: "1712", 
    description: "Possibly the last royal armor made in Europe, this is believed to have been presented to the five-year-old Infante Luis (1707–1724), prince of Asturias, by his great-grandfather Louis XIV of France (1638–1715, reigned from 1643). Luis was the first Spanish-born Bourbon heir to the throne of Spain and ruled briefly as Luis I in 1724. The armor is signed and dated on the backplate Drouar Ordinaire du Roi aux Heaume à Paris 1712 (Drouar, armorer-in-ordinary to the king, at the sign of the helm, in Paris, 1712). The signature probably refers to Jean Drouart (died before October 1715), a royal armorer. Drouart was one of the last practicing armorers active in France by 1712. Remarkable for the state of its preservation, the armor retains its lustrous blue and gold surfaces and nearly all the original red silk lining. The gilt rivet heads are of heraldic design—the lion of León, the castle of Castile, and the fleur-de-lis of France—representing the dynastic claims to which Luis was heir."
    )

    p7 = Picture.create(
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/437153/1728757/main-image", 
    title: "Oedipus and the Sphinx",
    artist: "Gustave Moreau", 
    date: "1864", 
    description: "The legendary Greek prince Oedipus confronts the malevolent Sphinx, who torments travelers with a riddle: What creature walks on four legs in the morning, two legs at noon, and three legs in the evening? Remains of victims who answered incorrectly litter the foreground. (The solution is the human, who crawls as a baby, strides upright in maturity, and uses a cane in old age.) Moreau made his mark with this painting at the Paris Salon of 1864. Despite the growing prominence of depictions of everyday life, he portrayed stories from the Bible, mythology, and his imagination. His otherworldly imagery inspired many younger artists and writers, including Odilon Redon and Oscar Wilde."
    )

    10.times do
        Comment.create(comment: Faker::TvShows::NewGirl.quote, user: User.all.sample, picture: Picture.all.sample)
    end

    
puts "a fresh batch of seeds has been planted"