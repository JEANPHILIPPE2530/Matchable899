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

emmanuel = User.create(
  {email: "emmanuel@test.com", password: "password1", role: "developer"}
)
puts "creates Emmanuel"

chady = User.create(
  {email: "chady@test.com", password: "password1", role: "developer"}
)
puts "creates Chady"

wajiiha = User.create(
  {email: "wajiiha@test.com", password: "password1", role: "developer"}
)
puts "creates Wajiiha"

adel = User.create(
  {email: "adel@test.com", password: "password1", role: "developer"}
)
puts "creates Adel"

Stephanie = User.create(
  {email: "Stephanie@test.com", password: "password1", role: "developer"}
)
puts "creates Stephanie"

hema = User.create(
  {email: "hema@test.com", password: "password1", role: "developer"}
)
puts "creates Hema"

william = User.create(
  {email: "william@test.com", password: "password1", role: "developer"}
)
puts "creates Will"

billy = User.create(
  {email: "billy@test.com", password: "password1", role: "developer"}
)
puts "creates Billy"


# Company users
nad = User.create({email: "nad@test.com", password: "password2", role: "company"})
puts "creates Nad"
fabrice = User.create({email: "fabrice@test.com", password: "password4", role: "company"})
puts "creates fabrice"
tony_stark  = User.create({email: "tony_stark@test.com", password: "password4", role: "company"})
puts "creates Tony"
bruce_wayne  = User.create({email: "bruce_wayne@test.com", password: "password4", role: "company"})
puts "creates Bruce"
lorene = User.create({email: "lorene@test.com", password: "password1", role: "company"})
puts "creates Lorene"

philippe = User.create({email: "philippe@test.com", password: "password2", role: "company"})
puts "creates Philippe"
auguste = User.create({email: "auguste@test.com", password: "password4", role: "company"})
puts "creates Auguste"
cangy = User.create({email: "cangy@test.com", password: "password4", role: "company"})
puts "creates Cangy"
mohammad  = User.create({email: "mohammad@test.com", password: "password4", role: "company"})
puts "creates Mohammad"
ramful  = User.create({email: "ramful@test.com", password: "password4", role: "company"})
puts "creates Ramful"
manampisoa  = User.create({email: "manampisoa@test.com", password: "password4", role: "company"})
puts "creates Manampisoa"
momple = User.create({email: "momple@test.com", password: "password2", role: "company"})
puts "creates Momple"
mayer = User.create({email: "mayer@test.com", password: "password4", role: "company"})
puts "creates Mayer"
narod = User.create({email: "narod@test.com", password: "password4", role: "company"})
puts "creates Narod"
malatiana  = User.create({email: "malatiana@test.com", password: "password4", role: "company"})
puts "creates Malalatiana"




require "open-uri"

# file = URI.open('upload/')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Creating 10 company"
company_1 = Company.new({
    name: "Google",
    description: "Google LLC is an American multinational technology company that focuses on artificial intelligence, search engine technology, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics.",
    address: "Ebene, Mauritius",
    website: "www.google.com",
    zoom: "google.recruit",
    phone_number: "+123456789",
    user: bruce_wayne
    })
    file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png')
    company_1.photo.attach(io: file, filename: 'google.png', content_type: 'image/png')
    company_1.save
    puts "creates Google"
# company_1 = Company.create!({
#     name: "Google",
#     description: "Google LLC is an American multinational technology company that focuses on artificial intelligence, search engine technology, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics.",
#     address: "Ebene, Mauritius",
#     website: "www.google.com",
#     zoom: "google.recruit",
#     phone_number: "+123456789",
#     photo: File.read("upload/google_logo.png"),
#     user: lorene
#     })

    # photo: "app/assets/images/google_logo.png"

# company_1.photo.attach(io: URI.open('upload/google_logo.png'), filename: "google_logo.png", content_type: "image/png")
company_2 = Company.new({
     name: "Slack",
     description: "Slack is a messaging program designed specifically for the workplace. Developed by American software company Slack Technologies and now owned by Salesforce, Slack offers many IRC-style features, including persistent chat rooms (channels) organized by topic, private groups, and direct messaging.",
     address: "Ebene, Mauritius",
     website: "www.slack.com",
     zoom: "slack.recruit",
     phone_number: "+123456789",
     user: tony_stark
     })
     file = URI.open('https://helios-i.mashable.com/imagery/articles/047UsVLCrupUmmsuitpn1nw/hero-image.fill.size_1248x702.v1623374965.png')
     company_2.photo.attach(io: file, filename: 'slack.png', content_type: 'image/png')
     company_2.save
     # photo: "app/assets/images/slack_logo.png"
# }
# )
# company_2.photo.attach(io: URI.open('upload/slack_logo.png'), filename: "slack_logo.png", content_type: "image/png")
puts "creates Slack"

company_3 = Company.new({
    name: "Dropbox",
    description: "Dropbox is a file hosting service operated by the American company Dropbox, Inc., headquartered in San Francisco, California, U.S. that offers cloud storage, file synchronization, personal cloud, and client software. Dropbox was founded in 2007 by MIT students Drew Houston and Arash Ferdowsi as a startup company, with initial funding from seed accelerator Y Combinator.",
    address: "Ebene, Mauritius",
   website: "www.dropbox.com",
    zoom: "dropbox.recruit",
    phone_number: "+123456789",
    user: lorene
    })
    file = URI.open('https://1000logos.net/wp-content/uploads/2020/08/Dropbox-Logo-2013.jpg')
    company_3.photo.attach(io: file, filename: 'dropbox.png', content_type: 'image/png')
    company_3.save
#     # photo: "app/assets/images/dropbox_logo.png"
# }
# )
# company_3.photo.attach(io: URI.open('upload/dropbox_logo.png'), filename: "dropbox_logo.png", content_type: "image/png")
puts "creates Dropbox"

company_4 = Company.new({
     name: "Github",
     description: "GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management (SCM) functionality of Git, plus its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, continuous integration, and wikis for every project.",
     address: "Ebene, Mauritius",
     website: "www.github.com",
     zoom: "github.recruit",
     phone_number: "+123456789",
     user: nad
     })
 file = URI.open('https://github.githubassets.com/images/modules/logos_page/Octocat.png')
 company_4.photo.attach(io: file, filename: 'github.png', content_type: 'image/png')
 company_4.save
 puts "creates Github"


company_6 = Company.new({
  name: "Whatsapp",
  description: "WhatsApp Messenger is a cross-platform instant messaging application that allows iPhone, Blackberry, Android, Windows Phone and Nokia smartphone users to exchange text, image, video and audio messages for free. WhatsApp is especially popular with end users who do not have unlimited text messaging.",
  address: "Port Louis, Mauritius",
  website: "www.whatsapp.com",
  zoom: "whatsapp.recruit",
  phone_number: "+74986234",
  user: auguste
  })
  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1200px-WhatsApp.svg.png')
  company_6.photo.attach(io: file, filename: 'whatsapp.png', content_type: 'image/png')
  company_6.save
  puts "creates Whatsapp"

company_7 = Company.new({
  name: "Facebook",
  description: "Facebook is a popular free social networking website that enables users to share information and photos and keep in touch with family and friends.",
  address: "Curepipe, Mauritius",
  website: "www.facebook.com",
  zoom: "facebook.recruit",
  phone_number: "+2989024376053",
  user: cangy
  })
  file = URI.open('https://www.facebook.com/images/fb_icon_325x325.png')
  company_7.photo.attach(io: file, filename: 'facebook.png', content_type: 'image/png')
  company_7.save
  puts "creates Facebook"

company_8 = Company.new({
  name: "Netflix",
  description: "Netflix is a subscription-based streaming service that allows our members to watch TV shows and movies without commercials on an internet-connected device. You can also download TV shows and movies to your iOS, Android, or Windows 10 device and watch without an internet connection.",
  address: "Ebene, Mauritius",
  website: "www.netflix.com",
  zoom: "netflix.recruit",
  phone_number: "+803473649",
  user: mohammad
  })
  file = URI.open('https://www.pngmart.com/files/21/Netflix-N-Logo-PNG-Photos.png')
  company_8.photo.attach(io: file, filename: 'netflix.png', content_type: 'image/png')
  company_8.save
  puts "creates Netflix"

company_9 = Company.new({
  name: "Pinterest",
  description: "Pinterest is a social curation website for sharing and categorizing images found online. The site is described in its own content as a visual bookmarking site. Pinterest is a portmanteau of the words “pin” and “interest.",
  address: "Ebene, Mauritius",
  website: "www.pinterest.com",
  zoom: "pinterest.recruit",
  phone_number: "+478324",
  user: ramful
  })
  file = URI.open('https://www.rockymountainfoodtours.com/wp-content/uploads/2016/02/Pinterest-Logo.png')
  company_9.photo.attach(io: file, filename: 'pinterest.png', content_type: 'image/png')
  company_9.save
  puts "creates Pinterest"


company_10 = Company.new({
  name: "Microsoft",
  description: "Microsoft is the largest vendor of computer software in the world. It is also a leading provider of cloud computing services, video games, computer and gaming hardware, search and other online services. Microsoft’s corporate headquarters is located in Redmond, Wash., and it has offices in more than 60 countries.",
  address: "Ebene, Mauritius",
  website: "www.microsoft.com",
  zoom: "microsoft.recruit",
  phone_number: "+900323948",
  user: manampisoa
  })
  file = URI.open('https://e7.pngegg.com/pngimages/359/57/png-clipart-logo-microsoft-corporation-brand-windows-server-2016-windows-xp-intellect-angle-text-thumbnail.png')
  company_10.photo.attach(io: file, filename: 'microsoft.png', content_type: 'image/png')
  company_10.save
  puts "creates Microsoft"

  company_5 = Company.new({
    name: "Instagram",
    description: "Instagram is an American photo and video sharing social networking service founded in 2010 by Kevin Systrom and Mike Krieger, and later acquired by Facebook Inc.. The app allows users to upload media that can be edited with filters and organized by hashtags and geographical tagging.",
    address: "Port Louis, Mauritius",
    website: "www.instagram.com",
    zoom: "instagram.recruit",
    phone_number: "+384937658",
    user: philippe
    })
    file = URI.open('https://toppng.com/uploads/preview/logo-instagram-png-116177728255ciniqgxmb.png')
    company_5.photo.attach(io: file, filename: 'instagram.png', content_type: 'image/png')
    company_5.save
    puts "creates Instagram"


company_12 = Company.new({
  name: "Apple",
  description: "Apple Inc (Apple) designs, manufactures, and markets smartphones, tablets, personal computers (PCs), portable and wearable devices. The company also offers software and related services, accessories, networking solutions, and third-party digital content and applications.",
  address: "Ebene, Mauritius",
  website: "www.apple.com",
  zoom: "aplle.recruit",
  phone_number: "+1283429",
  user: mayer
  })
  file = URI.open('https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png')
  company_12.photo.attach(io: file, filename: 'apple.png', content_type: 'image/png')
  company_12.save
  puts "creates Apple"


company_11 = Company.new({
  name: "LinkedIn",
  description: "LinkedIn is a social networking site designed specifically for the business community. The goal of the site is to allow registered members to establish and document networks of people they know and trust professionally.",
  address: "Ebene, Mauritius",
  website: "www.linkedin.com",
  zoom: "linkedin.recruit",
  phone_number: "+732964352",
  user: momple
  })
  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/800px-LinkedIn_logo_initials.png')
  company_11.photo.attach(io: file, filename: 'linkedin.png', content_type: 'image/png')
  company_11.save
  puts "creates Linkedin"


company_13 = Company.new({
  name: "Nokia",
  description: "Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics company, established in 1865.",
  address: "Ebene, Mauritius",
  website: "www.nokia.com",
  zoom: "nokia.recruit",
  phone_number: "+2834765",
  user: narod
  })
  file = URI.open('https://logos-world.net/wp-content/uploads/2020/09/Nokia-Logo.png')
  company_13.photo.attach(io: file, filename: 'nokia.png', content_type: 'image/png')
  company_13.save
  puts "creates Nokia"

company_14 = Company.new({
  name: "TikTok",
  description: "TikTok is a mobile video sharing and social networking app launched in September 2016. It is developed by the Chinese company ByteDance for the non-Chinese market. Its counterpart for the Chinese market bears the name Douyin. Its logo evokes a musical note.",
  address: "Ebene, Mauritius",
  website: "www.tiktok.com",
  zoom: "tiktok.recruit",
  phone_number: "+8329953",
  user: ramful
  })
  file = URI.open('https://cdn.pixabay.com/photo/2022/02/09/08/24/tiktok-7002866__340.png')
  company_14.photo.attach(io: file, filename: 'tiktok.png', content_type: 'image/png')
  company_14.save
  puts "creates Tik tok"

# )
# company_4.photo.attach(io: URI.open('upload/github_logo.png'), filename: "github_logo.png", content_type: "image/png")

# Developer.create([
#     {

# }
# )
# developer_1.photo.attach(io: URI.open('upload/harry_potter.jpg'), filename: "harry_potter.jpg", content_type: "image/jpg")

#     # photo: "app/assets/images/tony_stark.jpg"
# )
# developer_2.photo.attach(io: URI.open('upload/tony_stark.jpg'), filename: "tony_stark.jpg", content_type: "image/jpg")


developer_3 = Developer.new({
    first_name: "Jean Philippe",
    last_name: "Auguste",
    biography: "I am the owner of Wayne Enterprise an international web development firm. I am also a freelance Back End Developer based in Mauritius.",
    phone_number: "+123456789",
    address: "Port Louis, Mauritius",
    website: "www.wayne.com",
    zoom: "wayne",
    github: "bwayne",
    skills: ["Java", "JavaScript", "Python", "C++", "Ruby"],
    user: jean_philippe_auguste
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B0LANLEQ-09cffd6aeee8-512')
    developer_3.photo.attach(io: file, filename: 'jean_philippe_auguste.png', content_type: 'image/png')
    developer_3.save
    puts "creates JP"


developer_4 = Developer.new({
    first_name: "Fabrice",
    last_name: "Madre",
    biography: "Hello, I am Web Developer with 2 Years of experience working with startups and specialized in JavaScript",
    phone_number: "+123456789",
    address: "vacoas, Mauritius",
    website: "www.fabrice.com",
    zoom: "fabrice.madre",
    github: "fab",
    skills: ["JavaScript", "HTML", "CSS"],
    user: fabrice
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U025K0TDAJX-861231e1c62a-512')
    developer_4.photo.attach(io: file, filename: 'harry.png', content_type: 'image/png')
    developer_4.save
    puts "creates Fabrice"

developer_5 = Developer.new({
    first_name: "Emmanuel",
    last_name: "Cangy",
    biography: "Hello, I am a Senior Back-End Developer with 5 years of working experience",
    phone_number: "+7797349965",
    address: "Beau Bassin, Mauritius",
    website: "www.emmanuelcangy.com",
    zoom: "emmanuel.cangy",
    github: "cangy",
    skills: ["JavaScript", "HTML", "SQL","CSS"],
     user: emmanuel
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03BBDU5S81-5f785f1fb151-512')
    developer_5.photo.attach(io: file, filename: 'emmanuel.png', content_type: 'image/png')
    developer_5.save
    puts "creates Emmanuel"

 developer_6 = Developer.new({
    first_name: "Ahshad",
    last_name: "Chady",
    biography: "I am also a freelance Back End Developer based in Mauritius.",
    phone_number: "+89463595",
    address: "St Pierre, Mauritius",
    website: "www.chady.com",
    zoom: "chady",
    github: "chady",
    skills: ["Java", "JavaScript", "Python", "C++", "Ruby"],
    user: chady
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03BHS9NLUT-d1881c097f45-512')
    developer_6.photo.attach(io: file, filename: 'chady.png', content_type: 'image/png')
    developer_6.save
    puts "creates Ashad"


developer_7 = Developer.new({
    first_name: "Wajiiha",
    last_name: "Coowar",
    biography: "Web developer with 2+ years of experience in designing and developing user interfaces, testing, debugging, and training within eCommerce technologies.",
    phone_number: "+983972964",
    address: "Curepipe, Mauritius",
    website: "www.wajiiha.com",
    zoom: "wajiiha",
    github: "wajiiha",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    user: wajiiha
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03C0A7UVQQ-db61fb4ba0a2-512')
    developer_7.photo.attach(io: file, filename: 'wajiiha.png', content_type: 'image/png')
    developer_7.save
    puts "creates Wajiiha"


developer_8 = Developer.new({
    first_name: "Adel",
    last_name: "Narod",
    biography: "Experienced web developer adept in all stages of advanced web developpement.",
    phone_number: "+1842346",
    address: "Quatre Bornes, Mauritius",
    website: "www.adel.com",
    zoom: "adel",
    github: "adel",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    user: adel
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03BAQE99ED-30e61d669f81-512')
    developer_8.photo.attach(io: file, filename: 'adel.png', content_type: 'image/png')
    developer_8.save
    puts "creates Adel"

developer_9 = Developer.new({
    first_name: "Stephanie",
    last_name: "Malalatiana",
    biography: "Innovative, task-driven professional with 3+ years of experience in web design and development across diverse industries.",
    phone_number: "+847361924",
    address: "Curepipe, Mauritius",
    website: "www.stephanie.com",
    zoom: "stephanie",
    github: "stephanie",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    user: jean_philippe_auguste
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03BE6TPQE8-a5dedf26a8ef-512')
    developer_9.photo.attach(io: file, filename: 'stephanie.png', content_type: 'image/png')
    developer_9.save
    puts "creates Stephanie"

developer_10 = Developer.new({
    first_name: "hema",
    last_name: "momple",
    biography: "Creative web developer dedicated to developing and optimising interactive, user-friendly, and strong attention to detail in order to deliver original and efficient web solutions..",
    phone_number: "+823644393",
    address: "Curepipe, Mauritius",
    website: "www.hema.com",
    zoom: "hema",
    github: "hema",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    user: hema
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B3UMKNVC-e41d00b18a2e-512')
    developer_10.photo.attach(io: file, filename: 'hema.png', content_type: 'image/png')
    developer_10.save
    puts "creates Hema"

developer_13 = Developer.new({
      first_name: "Yeshna",
      last_name: "Domah",
      biography: "Qualified web student with various web development certificates. Interested in Jobs in Mauritius.",
      phone_number: "+123456789",
      address: "St Pierre, Mauritius",
      website: "www.stark.com",
      zoom: "stark",
      github: "stark",
      skills: ["JavaScript", "Ruby", "React"],
      user: yeshna
     })
      file = URI.open('https://ca.slack-edge.com/T02NE0241-U03AHQE9JNB-57ceb33b2093-512')
      developer_13.photo.attach(io: file, filename: 'yeshna_domah.png', content_type: 'image/png')
      developer_13.save
      puts "creates Yeshna"

developer_2 = Developer.new({
    first_name: "Lorene",
    last_name: "Manampisoa",
    biography: "I am the owner of Manampisoa Enterprise an international web development firm. I am also a freelance Front End Developer based in Mauritius.",
    phone_number: "+98376225",
    address: "Grand Baie, Mauritius",
    website: "www.lorene.com",
    zoom: "lorene",
    github: "lorene",
    skills: ["Java", "JavaScript", "Python", "C++", "Ruby"],
    user: lorene
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
    developer_3.photo.attach(io: file, filename: 'lorene.png', content_type: 'image/png')
    developer_3.save
    puts "creates lorene"

developer_11 = Developer.new({
    first_name: "william",
    last_name: "mayer",
    biography: "I have used my time to bring visually aesthetic, responsive, and accessible websites to my community.",
    phone_number: "+83841443",
    address: "Grand Baie, Mauritius",
    website: "www.william.com",
    zoom: "william",
    github: "william",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    user: william
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B37LMDGU-0d7210db56f1-512')
    developer_11.photo.attach(io: file, filename: 'william.png', content_type: 'image/png')
    developer_11.save
    puts "creates Will"

developer_12 = Developer.new({
    first_name: "billy",
    last_name: "perle",
    biography: "I have used my time to bring responsive, and accessible websites to my community.",
    phone_number: "+8302469060",
    address: "Grand Baie, Mauritius",
    website: "www.billy.com",
    zoom: "billy",
    github: "billy",
    skills: ["JavaScript", "HTML", "CSS"],
    user: billy
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U026TLSDJNN-89b34fed5cf6-512')
    developer_12.photo.attach(io: file, filename: 'billy.png', content_type: 'image/png')
    developer_12.save
    puts "creates Billy"

# # ])
# #     # photo: "app/assets/images/james_bond.jpeg"
# # }
# # )
# # developer_4.photo.attach(io: URI.open('upload/james_bond.jpeg'), filename: "james_bond.jpeg", content_type: "image/jpeg")

#developer_4.photo.attach(io: URI.open('upload/james_bond.jpeg'), filename: "james_bond.jpeg", content_type: "image/jpeg")

match_1 = Match.new({
  developer_id: developer_4.id,
  company_id: company_4.id,
})
match_1.save

match_2 = Match.new({
  developer_id: developer_3.id,
  company_id: company_3.id,
})
match_2.save

match_3 = Match.new({
  developer_id: developer_13.id,
  company_id: company_5.id,
})
match_3.save

match_3 = Match.new({
  developer_id: developer_13.id,
  company_id: company_12.id,
})
match_3.save

match_4 = Match.new({
  developer_id: developer_2.id,
  company_id: company_6.id,
})
match_4.save

match_4 = Match.new({
  developer_id: developer_2.id,
  company_id: company_7.id,
})
match_4.save

chatroom_1 = Chatroom.new({
  match_id: match_1.id,
})
chatroom_1.save

chatroom_2 = Chatroom.new({
  match_id: match_2.id,
})
chatroom_2.save
