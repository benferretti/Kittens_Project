require 'faker'

User.destroy_all
User.reset_pk_sequence
Product.destroy_all
Product.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence

Faker::Config.locale = 'fr'

user_email_array = ['aomee@yopmail.com', 'julien@yopmail.com', 'benjamin@yopmail.com' , 'amaury@yopmail.com' , 'benoit@yopmail.com']
category_array = ['Imparisyllabique' , 'Hétéroclite' , 'Rocambolesque' , 'Délectable' , 'Cataclysmique']
product_name_array = ['Anakin','Bellatrix','Excalibur','Galilée','Gertrude','Itachi','Ondine','Padme','Perceval','Pétunia','Pikachu','Platon','Princesse Leia','Raspoutine','Rodolphe','Roi Arthur','Sauron','Shrek','Vador','Yoda']
product_description_array = ["Obtenez l'élu de la force, il vous le rendra bien (nous ne répondrons pas de son comportement).","Tu ne seras jamais de taille à rivaliser avec moi, pauvre petit bonhomme...","Seul l'élu pourra me posséder.","Je n'ai jamais rencontré d'homme si ignorant qu'il n'eut quelque chose à m'apprendre. Achète-moi.","Comme son nom ne l'indique pas…","Quand tu posséderas la même pupille que moi… viens à moi !","J'adore l'eau, dans 20/30 ans il y en aura plus.","Ainsi s'éteint la liberté. Sous des applaudissements.","C'est pas faux.","Elle fait un peu la star mais elle est cool.","Attrapez les tous.","Les hommes ne veulent pas ce qu'ils font, mais ce en vue de quoi ils font ce qu'ils font.","Obi-wan, vous êtes mon dernier espoir.","Je me battrai pour toi… Tant que tu me paieras.","Craquez pour ce petit geek.","Il commence à doucement me faire chier celui là aussi!","Un Anneau pour les gouverner tous, un Anneau pour les amener tous et dans les ténèbres les lier.","J’te double, et je suis même pas à fond…","Rejoignez le côté obscur de la force et controllez la galaxie aux côtés de Vador le chat. Fourni avec la tasse.","M'acheter tu feras, satisfaction tu obtiendras, jeune padawan."]
product_url_array = ['https://pictures.kitties.netlib.re/jirafeau/f.php?h=1lYPaQq1&p=1','https://pictures.kitties.netlib.re/jirafeau/f.php?h=0ZBOTFM3&p=1','https://pictures.kitties.netlib.re/jirafeau/f.php?h=2k5gHTsM&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0ebRycTF&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0T8HnAlS&p=1' , 'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1zsRBrxI&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=2ZBK1VsM&p=1' , 'https://pictures.kitties.netlib.re/jirafeau/f.php?h=3x2Y-oLV&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=3bEHeeIV&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0p6c5XMV&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0IbFnCN0&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0wsaJds2&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0ruTi1sg&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=0yN1bJWT&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=2bZVJQw3&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=1v2LVW3A&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=3rugiv9j&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=03XQ7az6&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=2MOZojCF&p=1' ,'https://pictures.kitties.netlib.re/jirafeau/f.php?h=144hs3K9&p=1']
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
