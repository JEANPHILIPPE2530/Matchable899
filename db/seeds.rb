require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all
Chatroom.destroy_all
Match.destroy_all
Company.destroy_all
Developer.destroy_all
User.destroy_all

puts "create 20 users"
yeshna = User.create(
  {email: "yeshna@test.com", password: "password1", role: "developer"}
)
puts "creates Yeshna"

jean_philippe_auguste = User.create(
  {email: "jean_philippe_auguste@test.com", password: "password1", role: "developer"}
)
puts "creates JPA"

adel = User.create(
  {email: "adel@test.com", password: "password1", role: "developer"}
)
puts "creates Adel"

Stephanie = User.create(
  {email: "Stephanie@test.com", password: "password1", role: "developer"}
)
puts "creates Stephanie"



# Company users
nad = User.create({email: "nad@test.com", password: "password2", role: "company"})
puts "creates Nad"
tony_stark  = User.create({email: "tony_stark@test.com", password: "password4", role: "company"})
puts "creates Tony"
bruce_wayne  = User.create({email: "bruce_wayne@test.com", password: "password4", role: "company"})
puts "creates Bruce"
lorene = User.create({email: "lorene@test.com", password: "password1", role: "company"})
puts "creates Lorene"
auguste = User.create({email: "auguste@test.com", password: "password4", role: "company"})
puts "creates Auguste"


require "open-uri"

# file = URI.open('upload/')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Creating 5 company"
company_1 = Company.new({
    name: "Orange",
    description: "Orange SA is a telecommunication services company, which operates mobile and internet services.",
    address: "Ebene, Mauritius",
    website: "www.orange.com",
    zoom: "orange.recruit",
    phone_number: "+123456789",
    user: bruce_wayne
    })
    file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcSKz2BZXAnoMCIfRzyQ7l9Ru6ISH2tkQbDuAKCfCu-cA5TLGljPmNuUW_GkbJMKKD0oVkM%26usqp%3DCAU')
    company_1.photo.attach(io: file, filename: 'orange.png', content_type: 'image/png')
    company_1.save
    puts "creates Orange"

company_2 = Company.new({
     name: "SD Worx (Mauritius) Limited",
     description: "Established in 2000, SD Worx Mauritius has earned its position as an Employer of Choice, acting as a delivery centre, servicing all the business units within the SD Worx Group. It is a recognised thought leader in the Mauritius IT-BPO industry.",
     address: "Ebene, Mauritius",
     website: "www.sd_worx.com",
     zoom: "sd_worx.recruit",
     phone_number: "+123456789",
     user: tony_stark
     })
     file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1377315723643609089%2FcVsV9Pou_400x400.jpg')
     company_2.photo.attach(io: file, filename: 'sd_worx.png', content_type: 'image/png')
     company_2.save
     # photo: "app/assets/images/slack_logo.png"
# }
# )
# company_2.photo.attach(io: URI.open('upload/slack_logo.png'), filename: "slack_logo.png", content_type: "image/png")
puts "creates Sd Worx"

company_3 = Company.new({
    name: "Checkout",
    description: "Checkout.com is an international financial technology company which processes payments for other companies. Founded as Opus Payments in 2009, it is headquartered in London, United Kingdom.",
    address: "Ebene, Mauritius",
   website: "www.checkout.com",
    zoom: "checkout.recruit",
    phone_number: "+123456789",
    user: lorene
    })
    file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fmedia-exp1.licdn.com%2Fdms%2Fimage%2FC4D0BAQG7ZMapBfYqRQ%2Fcompany-logo_200_200%2F0%2F1626262589046%3Fe%3D2147483647%26v%3Dbeta%26t%3DVu813miwME-dTxXwDMZx7az__lxRjlQju3Bp3BXKd9o')
    company_3.photo.attach(io: file, filename: 'checkout.png', content_type: 'image/png')
    company_3.save
puts "creates Checkout"

company_4 = Company.new({
     name: "Ceridian Mauritius Ltd",
     description: "Ceridian is a global human capital management technology company. Dayforce, our flagship cloud HCM platform, provides human resource, payroll, benefits, workforce management, and talent management functionality in a single solution that helps to make work life better for our customers.",
     address: "Ebene, Mauritius",
     website: "www.ceridian.com",
     zoom: "ceridian.recruit",
     phone_number: "+123456789",
     user: nad
     })
 file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fd2q79iu7y748jz.cloudfront.net%2Fs%2F_squarelogo%2F6d5c1fbe30d293efa9e15d130426d334')
 company_4.photo.attach(io: file, filename: 'ceridian.png', content_type: 'image/png')
 company_4.save
 puts "creates Ceridian"


company_5 = Company.new({
  name: "Accenture",
  description: "Accenture Strategy and Consulting provides business strategy, technology strategy, operations strategy services, as well as technology, business and management consulting services.",
  address: "Port Louis, Mauritius",
  website: "www.accenture.com",
  zoom: "accenture.recruit",
  phone_number: "+74986234",
  user: auguste
  })

  file = URI.open('https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fwww.accenture.com%2Ft20200701T040724Z__w__%2Fus-en%2F_acnmedia%2FAccenture%2FRedesign-Assets%2FDotCom%2FImages%2FGlobal%2FHero%2F12%2FAccenture-Logo-768x768.jpg')
  company_5.photo.attach(io: file, filename: 'whatsapp.png', content_type: 'image/png')
  company_5.save
  puts "creates Whatsapp"


developer_1 = Developer.new({
    first_name: "Jean Philippe",
    last_name: "Auguste",
    biography: "I am also a freelance Product Designer based in Mauritius, searching a job as full-time Product Designer.",
    phone_number: "+123456789",
    address: "Port Louis, Mauritius",
    website: "www.wayne.com",
    zoom: "wayne",
    github: "bwayne",
    skills: ["Product Designer"],
    user: jean_philippe_auguste
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B0LANLEQ-09cffd6aeee8-512')
    developer_1.photo.attach(io: file, filename: 'jean_philippe_auguste.png', content_type: 'image/png')
    developer_1.save
    puts "creates JP"


developer_2 = Developer.new({
    first_name: "Adel",
    last_name: "Narod",
    biography: "Experienced web developer adept in all stages of advanced web developpement. Looking for an opportunity as Senior Back End Web Developer.",
    phone_number: "+1842346",
    address: "Quatre Bornes, Mauritius",
    website: "www.adel.com",
    zoom: "adel",
    github: "adel",
    skills: ["Back-End Developer"],
    user: adel
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03BAQE99ED-30e61d669f81-512')
    developer_2.photo.attach(io: file, filename: 'adel.png', content_type: 'image/png')
    developer_2.save
    puts "creates Adel"

developer_3 = Developer.new({
    first_name: "Stephanie",
    last_name: "Malalatiana",
    biography: "Innovative, task-driven professional with 3+ years of experience in web design and development across diverse industries. In search of an opportunity to grow in the web development world.",
    phone_number: "+847361924",
    address: "Curepipe, Mauritius",
    website: "www.stephanie.com",
    zoom: "stephanie",
    github: "stephanie",
    skills: ["Web Designer"],
    user: Stephanie
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03BE6TPQE8-a5dedf26a8ef-512')
    developer_3.photo.attach(io: file, filename: 'stephanie.png', content_type: 'image/png')
    developer_3.save
    puts "creates Stephanie"


developer_4 = Developer.new({
      first_name: "Yeshna",
      last_name: "Domah",
      biography: "Qualified front-end web student with various web development certificates. Interested in Jobs in Mauritius.",
      phone_number: "+123456789",
      address: "St Pierre, Mauritius",
      website: "www.stark.com",
      zoom: "stark",
      github: "stark",
      skills: ["Front-End Developer"],
      user: yeshna
     })
      file = URI.open('https://ca.slack-edge.com/T02NE0241-U03AHQE9JNB-57ceb33b2093-512')
      developer_4.photo.attach(io: file, filename: 'yeshna_domah.png', content_type: 'image/png')
      developer_4.save
      puts "creates Yeshna"

developer_5 = Developer.new({
    first_name: "Lorene",
    last_name: "Manampisoa",
    biography: "I am the owner of Manampisoa Enterprise an international web development firm. I am also a freelance Full-Stack Developer based in Mauritius.",
    phone_number: "+98376225",
    address: "Grand Baie, Mauritius",
    website: "www.lorene.com",
    zoom: "lorene",
    github: "lorene",
    skills: ["Full-Stack Developer"],
    user: lorene
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
    developer_5.photo.attach(io: file, filename: 'lorene.png', content_type: 'image/png')
    developer_5.save
    puts "creates lorene"



match_1 = Match.new({
  developer_id: developer_4.id,
  company_id: company_3.id,
})
match_1.save

match_2 = Match.new({
  developer_id: developer_4.id,
  company_id: company_1.id,
})
match_2.save
