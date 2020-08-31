require 'faker'

User.destroy_all
User.reset_pk_sequence
Product.destroy_all
Product.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence

Faker::Config.locale = 'fr'

user_email_array = ['aomee@gmail.com', 'julien@gmail.com', 'benjamin@gmail.com' , 'amaury@gmail.com' , 'benoit@gmail.com']
category_array = ['Imparisyllabique' , 'Hétéroclite' , 'Rocambolesque' , 'Délectable' , 'Cataclysmique']
product_name_array = ['Anakin','Bellatrix','Excalibur','Galilée','Gertrude','Itachi','Ondine','Padme','Perceval','Pétunia','Pikachu','Platon','Princesse Leia','Raspoutine','Rodolphe','Roi Arthur','Sauron','Shrek','Vador','Yoda']
product_description_array = ["Obtenez l'élu de la force, il vous le rendra bien (nous ne répondrons pas de son comportement).","Tu ne seras jamais de taille à rivaliser avec moi, pauvre petit bonhomme...","Seul l'élu pourra me posséder.","Je n'ai jamais rencontré d'homme si ignorant qu'il n'eut quelque chose à m'apprendre. Achète-moi.","Comme son nom ne l'indique pas…","Quand tu posséderas la même pupille que moi… viens à moi !","J'adore l'eau, dans 20/30 ans il y en aura plus.","Ainsi s'éteint la liberté. Sous des applaudissements.","C'est pas faux.","Elle fait un peu la star mais elle est cool.","Attrapez les tous.","Les hommes ne veulent pas ce qu'ils font, mais ce en vue de quoi ils font ce qu'ils font.","Obi-wan, vous êtes mon dernier espoir.","Je me battrai pour toi… Tant que tu me paieras.","Craquez pour ce petit geek.","Il commence à doucement me faire chier celui là aussi!","Un Anneau pour les gouverner tous, un Anneau pour les amener tous et dans les ténèbres les lier.","J’te double, et je suis même pas à fond…","Rejoignez le côté obscur de la force et controllez la galaxie aux côtés de Vador le chat. Fourni avec la tasse.","M'acheter tu feras, satisfaction tu obtiendras, jeune padawan."]
product_url_array = ['https://pictures.kitties.netlib.re/jirafeau/f.php?h=3a1c7z_E&p=1','https://pictures.kitties.netlib.re/jirafeau/f.php?h=1QbuxicS&p=1','https://pictures.kitties.netlib.re/jirafeau/f.php?h=0qvs956M&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1sChCF6h&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0iT2zyYb&p=1' , 'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0g-EoI6R&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0td8GeJK&p=1' , 'https://pictures.kitties.netlib.re/jirafeau/f.php?h=28CqK0M2&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1W9TgfQ4&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1X0grdE2&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=3XCTVHCt&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0Y1xKryy&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0rlGc4P4&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=2EUdxNpW&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1cLai7C1&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1UjhNenF&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=2Mw4bB1G&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0lVqfl3-&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=2np6KgWN&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1Ksb2_8T&p=1']
i = 0
5.times do
  user = User.create(
    email: user_email_array[i],
    password: 'Azerty'
  )
  i += 1
  puts "Seeding User #{user.email}"
end
i = 0
5.times do 
  category = Category.create(
    name: category_array[i]
  )
  i += 1
end
i = 0 
20.times do 
  product = Product.create(
    name: product_name_array[i],
    description: product_description_array[i],
    price: rand(11..99),
    url: product_url_array[i],
    category_id: rand(1..5)
  )
  i += 1
end


