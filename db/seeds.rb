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
lorene = User.create(
    {email: "lorene@test.com", password: "password1"}
)
yeshna = User.create(
  {email: "yeshna@test.com", password: "password1"}
)
basile = User.create(
  {email: "basile@test.com", password: "password1"}
)
jean_philippe_auguste = User.create(
  {email: "jean_philippe_auguste@test.com", password: "password1"}
)

# Company.destroy_all
nad = User.create({email: "nad@test.com", password: "password2"})
jp = User.create({email: "jp@test.com", password: "password4"})


require "open-uri"

# file = URI.open('upload/')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


company_1 = Company.new({
    name: "Google",
    description: "Google LLC is an American multinational technology company that focuses on artificial intelligence, search engine technology, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics.",
    address: "Ebene, Mauritius",
    website: "www.google.com",
    zoom: "google.recruit",
    phone_number: "+123456789",
    user: lorene
    })
    file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png')
    company_1.photo.attach(io: file, filename: 'google.png', content_type: 'image/png')
    company_1.save

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
     user: lorene
     })
     file = URI.open('https://helios-i.mashable.com/imagery/articles/047UsVLCrupUmmsuitpn1nw/hero-image.fill.size_1248x702.v1623374965.png')
     company_2.photo.attach(io: file, filename: 'slack.png', content_type: 'image/png')
     company_2.save
     # photo: "app/assets/images/slack_logo.png"
# }
# )
# company_2.photo.attach(io: URI.open('upload/slack_logo.png'), filename: "slack_logo.png", content_type: "image/png")

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

 company_4 = Company.new({
     name: "Github",
     description: "GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management (SCM) functionality of Git, plus its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, continuous integration, and wikis for every project.",
     address: "Ebene, Mauritius",
     website: "www.github.com",
     zoom: "github.recruit",
     phone_number: "+123456789",
     user: lorene
 })
 file = URI.open('https://github.githubassets.com/images/modules/logos_page/Octocat.png')
 company_4.photo.attach(io: file, filename: 'github.png', content_type: 'image/png')
 company_4.save
# )
# company_4.photo.attach(io: URI.open('upload/github_logo.png'), filename: "github_logo.png", content_type: "image/png")

# Developer.create([
#     {

 developer_1 = Developer.new({
     first_name: "Basile",
     last_name: "Marquefave",
     biography: "Hello, I am Web Developer with 2 Years of experience working with startups and specialized in JavaScript",
     phone_number: "+123456789",
     address: "vacoas, Mauritius",
     website: "www.harrypotter.com",
     zoom: "harry.potter",
     github: "potter",
     skills: ["JavaScript", "HTML", "CSS"],
     user: basile
     })
     file = URI.open('https://ca.slack-edge.com/T02NE0241-UA3C34C9Y-5130922e9939-512')
     developer_1.photo.attach(io: file, filename: 'basile_marquefave.png', content_type: 'image/png')
     developer_1.save!
# }
# )
# developer_1.photo.attach(io: URI.open('upload/harry_potter.jpg'), filename: "harry_potter.jpg", content_type: "image/jpg")

 developer_2 = Developer.new({
     first_name: "Yeshna",
     last_name: "Domah",
     biography: "The founder of Stark Enterprise and Freelancer for Web Dev Jobs for 15years. Interested in Jobs in Mauritius.",
     phone_number: "+123456789",
     address: "St Pierre, Mauritius",
     website: "www.stark.com",
     zoom: "stark",
     github: "stark",
     skills: ["JavaScript", "Ruby", "React"],
     user: yeshna
    })
     file = URI.open('https://ca.slack-edge.com/T02NE0241-U03AHQE9JNB-57ceb33b2093-512')
     developer_2.photo.attach(io: file, filename: 'yeshna_domah.png', content_type: 'image/png')
     developer_2.save
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
#     photo: "app/assets/images/bruce_wayne.jpeg"
#     },
#     # photo: "app/assets/images/bruce_wayne.jpeg"
# )
# developer_3.photo.attach(io: URI.open('upload/bruce_wayne.jpeg'), filename: "bruce_wayne.jpeg", content_type: "image/jpeg")

developer_4 = Developer.new({
    first_name: "Harry",
    last_name: "Potter",
    biography: "Hello, I am Web Developer with 2 Years of experience working with startups and specialized in JavaScript",
    phone_number: "+123456789",
    address: "vacoas, Mauritius",
    website: "www.harrypotter.com",
    zoom: "harry.potter",
    github: "potter",
    skills: ["JavaScript", "HTML", "CSS"],
    user: harry
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
    developer_4.photo.attach(io: file, filename: 'harry.png', content_type: 'image/png')
    developer_4.save

developer_5 = Developer.new({
    first_name: "Tony",
    last_name: "Stark",
    biography: "The founder of Stark Enterprise and Freelancer for Web Dev Jobs for 15years. Interested in Jobs in Mauritius.",
    phone_number: "+123456789",
    address: "St Pierre, Mauritius",
    website: "www.stark.com",
    zoom: "stark",
    github: "stark",
    skills: ["JavaScript", "Ruby", "React"],
    user: tony_stark
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
    developer_5.photo.attach(io: file, filename: 'tony.png', content_type: 'image/png')
    developer_5.save

developer_6 = Developer.new({
    first_name: "Bruce",
    last_name: "Wayne",
    biography: "I am the owner of Wayne Enterprise an international web development firm. I am also a freelance Back End Developer based in Mauritius.",
    phone_number: "+123456789",
    address: "Port Louis, Mauritius",
    website: "www.wayne.com",
    zoom: "wayne",
    github: "bwayne",
    skills: ["Java", "JavaScript", "Python", "C++", "Ruby"],
    user: bruce_wayne
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
    developer_6.photo.attach(io: file, filename: 'bruce.png', content_type: 'image/png')
    developer_6.save


developer_7 = Developer.new({
    first_name: "James",
    last_name: "Bond",
    biography: "Hi, I am Web Developer with 7 Years of experience as a freelancer around the globe.",
    phone_number: "+123456789",
    address: "Grand Baie, Mauritius",
    website: "www.jamesbond.com",
    zoom: "bond",
    github: "jamesbond",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    user: james_bond
    })
    file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
    developer_7.photo.attach(io: file, filename: 'james.png', content_type: 'image/png')
    developer_7.save


 developer_8 = Developer.new({
     first_name: "Lorene",
     last_name: "Manampisoa",
     biography: "Hi, I am Web Developer with 7 Years of experience as a freelancer around the globe.",
     phone_number: "+123456789",
     address: "Grand Baie, Mauritius",
     website: "www.jamesbond.com",     zoom: "bond",
     github: "jamesbond",
     skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
     user: lorene
     })
     file = URI.open('https://ca.slack-edge.com/T02NE0241-U03B57W70KG-6fba6d4e12ec-512')
     developer_8.photo.attach(io: file, filename: 'lorene_manampisoa.png', content_type: 'image/png')
     developer_8.save
# #     }
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

chatroom_1 = Chatroom.new({
  match_id: match_1.id,
})
chatroom_1.save

chatroom_2 = Chatroom.new({
  match_id: match_2.id,
})
chatroom_2.save
